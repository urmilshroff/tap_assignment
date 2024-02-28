import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';
import 'package:tap_assignment/pages/document_page.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage>
    with TickerProviderStateMixin {
  bool next = false;
  late AnimationController maskRotateAnimationController;
  late AnimationController checkZoomAnimationController;
  late AnimationController pageZoomAnimationController;
  late final Animation<double> checkZoomAnimation;
  late final Animation<double> pageZoomAnimation;

  @override
  void initState() {
    maskRotateAnimationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();

    checkZoomAnimationController = AnimationController(
      duration: const Duration(milliseconds: 2750),
      vsync: this,
    )..repeat(reverse: true);

    pageZoomAnimationController = AnimationController(
      duration: const Duration(milliseconds: 5500),
      vsync: this,
    )..repeat();

    checkZoomAnimation = CurvedAnimation(
      parent: checkZoomAnimationController,
      curve: const Interval(
        0.0,
        0.4,
        curve: Curves.easeInOut,
      ),
    );

    pageZoomAnimation = CurvedAnimation(
      parent: pageZoomAnimationController,
      curve: const Interval(
        0.0,
        0.2,
        curve: Curves.easeInOut,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    maskRotateAnimationController.dispose();
    checkZoomAnimationController.dispose();
    pageZoomAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
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
                      padding: const EdgeInsets.all(28.0),
                      child: next
                          ? ScaleTransition(
                              scale: pageZoomAnimation,
                              child: Image.asset(
                                'assets/images/page.png',
                                width: 35,
                                height: 45,
                              ),
                            )
                          : ScaleTransition(
                              scale: checkZoomAnimation,
                              child: Align(
                                alignment: Alignment.center,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: RotationTransition(
                                        turns: maskRotateAnimationController,
                                        child: Image.asset(
                                          'assets/images/mask.png',
                                          width: 48,
                                          height: 48,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/images/tick.png',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                      onNext: (_, __) => setState(() => next = true),
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
