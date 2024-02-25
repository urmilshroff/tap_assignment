import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';
import 'package:tap_assignment/pages/success_page.dart';
import 'package:tap_assignment/widgets/divider.dart';

class PurchasingPage extends StatelessWidget {
  static final sliderKey = GlobalKey<SlideActionState>();
  const PurchasingPage({super.key});

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
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: TapText('Purchasing', style: TapTextStyles.heading),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: TapText(
              'Agrizy ← Keshav Industries',
              style: TapTextStyles.body,
            ),
          ),
          SizedBox(height: 32),
          TapDivider(),
          SizedBox(height: 100),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TapText(
                  'Total Returns',
                  style: TapTextStyles.body,
                ),
                Row(
                  children: [
                    TapText(
                      '₹ ',
                      style: TapTextStyles.body,
                    ),
                    TapText(
                      '56,555',
                      style: TapTextStyles.subTitle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          TapDivider(),
          SizedBox(height: 16),
          Padding(
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
          SizedBox(height: 16),
          TapDivider(),
          SizedBox(height: 16),
          Padding(
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
      bottomNavigationBar: Material(
        elevation: 8,
        child: SizedBox(
          height: 117 + MediaQuery.of(context).padding.bottom,
          child: Padding(
            padding: EdgeInsets.only(
              left: 21,
              right: 21,
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TapText(
                      'Balance: ₹1,00,000',
                      style: TapTextStyles.body,
                    ),
                    TapText(
                      'Required: ₹0',
                      style: TapTextStyles.body,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SlideAction(
                  key: sliderKey,
                  sliderRotate: false,
                  height: 54,
                  elevation: 0,
                  text: 'swipe to pay'.toUpperCase(),
                  textStyle: TapTextStyles.title.copyWith(color: Colors.black),
                  innerColor: TapColors.greenDark,
                  outerColor: TapColors.stoneExtraLight,
                  borderRadius: 6,
                  sliderButtonIconSize: 18,
                  sliderButtonIconPadding: 14,
                  onSubmit: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessPage(),
                      ),
                    );
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
