import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';
import 'package:tap_assignment/pages/success_page.dart';
import 'package:tap_assignment/widgets/divider.dart';

class PurchasingPage extends StatefulWidget {
  static final sliderKey = GlobalKey<SlideActionState>();
  const PurchasingPage({super.key});

  @override
  State<PurchasingPage> createState() => _PurchasingPageState();
}

class _PurchasingPageState extends State<PurchasingPage> {
  String error = '';
  String returns = '-';
  double reqd = 0.0;
  double amountEntered = 0.0;
  final min = 50000.0;
  final max = 100000.0;

  final formKey = GlobalKey<FormState>();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TapColors.backgroundLight,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TapColors.backgroundLight,
        leading: Padding(
          padding: const EdgeInsets.only(left: 21),
          child: GestureDetector(
              onTap: () async {
                // haptic feedback as long as button is tappable
                await HapticFeedback.mediumImpact();
                Navigator.pop(context);
              },
              child: Image.asset('assets/images/back.png', height: 35)),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: TapText('Purchasing', style: TapTextStyles.heading),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: TapText(
              'Agrizy ← Keshav Industries',
              style: TapTextStyles.body,
            ),
          ),
          const SizedBox(height: 32),
          const TapDivider(),
          const SizedBox(height: 48),
          Center(
            child: TapText(
              'enter amount'.toUpperCase(),
              style: TapTextStyles.helper,
            ),
          ),
          Form(
            key: formKey,
            child: TextFormField(
              controller: amountController,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                border: InputBorder.none,
                hintText: 'Min ₹$min',
                hintStyle: TapTextStyles.hint,
                // hide in built error text
                errorStyle: const TextStyle(
                  color: Colors.transparent,
                  fontSize: 0,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              style: TapTextStyles.amount,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onChanged: (String amountString) {
                setState(() {
                  error = '';
                  amountEntered = double.parse(amountString);
                  // calculate the amount required to invest
                  if (amountEntered > max) {
                    setState(() {
                      reqd = amountEntered - max;
                    });
                  } else {
                    reqd = 0.0;
                  }
                });
                // only if within budget
                if (amountEntered >= min && amountEntered <= max) {
                  // calculate final returns
                  final revenue = amountEntered + (0.1311 * amountEntered);
                  // assign a return amount only if investing >= min
                  setState(() {
                    returns = revenue.toString();
                  });
                } else {
                  setState(() {
                    // no revenue
                    returns = '-';
                  });
                }
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  setState(() {
                    error = 'Please enter an amount.';
                  });
                  return error;
                } else if (int.parse(value) < min) {
                  setState(() {
                    error = 'Enter an amount more than ₹$min';
                  });
                  return error;
                } else if (int.parse(value) > max) {
                  setState(() {
                    error = 'Enter an amount less than ₹$max';
                  });
                  return error;
                }
                return null;
              },
            ),
          ),
          Visibility(
            visible: error.isNotEmpty,
            child: Center(
              child: TapText(
                error,
                style: TapTextStyles.error,
              ),
            ),
          ),
          const SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TapText(
                  'Total Returns',
                  style: TapTextStyles.body,
                ),
                Row(
                  children: [
                    const TapText(
                      '₹ ',
                      style: TapTextStyles.body,
                    ),
                    // only show animation if amount entered is >= min
                    amountEntered >= min && amountEntered <= max
                        ? AnimatedDigitWidget(
                            fractionDigits: 2,
                            enableSeparator: true,
                            textStyle: TapTextStyles.subTitle,
                            value: double.parse(returns),
                          )
                        : TapText(
                            returns.toString(),
                            style: TapTextStyles.subTitle,
                          ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const TapDivider(),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TapText(
                      'Net Yield',
                      style: TapTextStyles.body,
                    ),
                    SizedBox(width: 8),
                    TapText(
                      'IRR',
                      style: TapTextStyles.bodyGreen,
                    ),
                    SizedBox(width: 2),
                    Icon(
                      Icons.info_outline,
                      size: 12,
                      color: TapColors.greenDark,
                    )
                  ],
                ),
                Row(
                  children: [
                    TapText(
                      '13.11',
                      style: TapTextStyles.subTitle,
                    ),
                    TapText(
                      ' %',
                      style: TapTextStyles.body,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const TapDivider(),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TapText(
                  'Tenure',
                  style: TapTextStyles.body,
                ),
                Row(
                  children: [
                    TapText(
                      '61',
                      style: TapTextStyles.subTitle,
                    ),
                    TapText(
                      ' Days',
                      style: TapTextStyles.body,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Material(
          elevation: 8,
          child: Container(
            height: 117 + MediaQuery.of(context).padding.bottom,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                left: 21,
                right: 21,
                bottom: MediaQuery.of(context).padding.bottom,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TapText(
                        'Balance: ₹$max',
                        style: TapTextStyles.body,
                      ),
                      TapText(
                        'Required: ₹$reqd',
                        style: TapTextStyles.body,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SlideAction(
                    key: PurchasingPage.sliderKey,
                    sliderRotate: false,
                    height: 54,
                    elevation: 0,
                    text: 'swipe to pay'.toUpperCase(),
                    textStyle:
                        TapTextStyles.title.copyWith(color: Colors.black),
                    innerColor: TapColors.greenDark,
                    outerColor: TapColors.stoneExtraLight,
                    borderRadius: 6,
                    sliderButtonIconSize: 18,
                    sliderButtonIconPadding: 14,
                    onSubmit: () async {
                      await HapticFeedback.mediumImpact();
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuccessPage(),
                          ),
                        );
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
