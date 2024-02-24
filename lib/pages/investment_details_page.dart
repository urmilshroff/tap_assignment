import 'package:flutter/material.dart';
import 'package:tap_assignment/helpers/borders.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';
import 'package:tap_assignment/widgets/divider.dart';
import 'package:tap_assignment/widgets/table.dart';

class InvestmentDetailsPage extends StatelessWidget {
  const InvestmentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TapColors.backgroundLight,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TapColors.backgroundLight,
        title: const Row(
          children: [
            Icon(
              Icons.arrow_back_rounded,
              color: TapColors.greenDark,
              size: 17,
            ),
            SizedBox(width: 8),
            TapText(
              'Back to Deals',
              style: TapTextStyles.headingButton,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                width: 90,
                height: 90,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 21),
                decoration: TapBorders.containerBorder.copyWith(
                  color: Colors.white,
                ),
                child: Image.asset(
                  'assets/images/green_arrows.png',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              children: [
                const TapText('Agrizy', style: TapTextStyles.heading),
                Icon(
                  Icons.arrow_back_rounded,
                  size: 18,
                  color: TapColors.textActiveOpacity,
                ),
                TapText('Keshav Industries', style: TapTextStyles.headingAlt),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: TapText(
              'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
              style: TapTextStyles.body,
              maxLines: 2,
            ),
          ),
          const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: TapTable(
              titles: [
                'min invt',
                'tenure',
                'net yield',
                'raised',
              ],
              subTitles: [
                '₹1 Lakh',
                '61 days',
                '13.23 %',
                '70 %',
              ],
            ),
          ),
          const SizedBox(height: 32),
          const TapDivider(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
