import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';
import 'package:tap_assignment/pages/document_page.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: TapColors.greenDark,
        body: Stack(
          children: [
            Lottie.asset('assets/lottie/flow.json'),
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
                      padding: const EdgeInsets.all(24.0),
                      child: Image.asset('assets/images/check.png'),
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
                    AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText(
                          'Payment Done',
                          textStyle: TapTextStyles.paymentTitle,
                          duration: const Duration(seconds: 5),
                        ),
                        FadeAnimatedText(
                          'Generating Contract',
                          textStyle: TapTextStyles.paymentTitle,
                          duration: const Duration(seconds: 5),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 500),
                    ),
                    const SizedBox(height: 16),
                    AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText(
                          'You are almost there!',
                          textStyle: TapTextStyles.paymentBody,
                          duration: const Duration(seconds: 5),
                        ),
                        FadeAnimatedText(
                          'You are almost there!',
                          textStyle: TapTextStyles.paymentBody,
                          duration: const Duration(seconds: 5),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 500),
                    ),
                    const SizedBox(height: 8),
                    AnimatedTextKit(
                      animatedTexts: [
                        FadeAnimatedText(
                          'Do not leave this page or press back.',
                          textStyle: TapTextStyles.paymentBody,
                          duration: const Duration(seconds: 5),
                        ),
                        FadeAnimatedText(
                          'Do not leave this page or press back.',
                          textStyle: TapTextStyles.paymentBody,
                          duration: const Duration(seconds: 5),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 500),
                      onFinished: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DocumentPage(),
                        ),
                        (route) => false,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
