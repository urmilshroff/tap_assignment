import 'package:flutter/material.dart';
import 'package:tap_assignment/helpers/colors.dart';

class TapDivider extends StatelessWidget {
  const TapDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1.25,
      color: TapColors.stoneExtraLight,
    );
  }
}
