import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';

class CompletePage extends StatelessWidget {
  const CompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TapColors.greenDark,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/dots.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Lottie.asset(
            'assets/lottie/flow.json',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25,
                ),
                child: Container(
                  height: 111,
                  width: 111,
                  decoration: BoxDecoration(
                    color: TapColors.greenExtraDark,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Image.asset(
                      'assets/images/flag.png',
                      width: 36,
                      height: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: (MediaQuery.of(context).size.height * 0.25) + 143,
                  ),
                  const TapText(
                    'All Done!',
                    style: TapTextStyles.paymentTitle,
                  ),
                  const SizedBox(height: 16),
                  const TapText(
                    'Redirecting you to the Dashboard.',
                    style: TapTextStyles.paymentBody,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
