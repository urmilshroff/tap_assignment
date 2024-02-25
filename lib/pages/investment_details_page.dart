import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TapText(
                  'Clients',
                  style: TapTextStyles.subTitle,
                ),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 16, top: 8),
                        child: Image.asset(
                          'assets/images/google_logo.png',
                          width: 66,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TapText(
                  'Backed by',
                  style: TapTextStyles.subTitle,
                ),
                Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 16, top: 8),
                        child: Image.asset(
                          'assets/images/google_logo.png',
                          width: 66,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          const TapDivider(),
          const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: TapText(
              'Highlights',
              style: TapTextStyles.subTitle,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 205,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 173,
                  width: 300,
                  decoration: TapBorders.containerBorder,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/bulb.png', height: 35),
                      const SizedBox(height: 16),
                      const TapText(
                        'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.',
                        style: TapTextStyles.body,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 173,
                  width: 300,
                  decoration: TapBorders.containerBorder,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/bulb.png', height: 35),
                      const SizedBox(height: 16),
                      const TapText(
                        'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.',
                        style: TapTextStyles.body,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
