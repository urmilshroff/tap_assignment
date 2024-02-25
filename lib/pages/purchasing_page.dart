import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';
import 'package:tap_assignment/widgets/divider.dart';

class PurchasingPage extends StatelessWidget {
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
    );
  }
}
