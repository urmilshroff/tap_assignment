import 'package:flutter/material.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';

class TapButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  const TapButton({
    super.key,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: isSelected ? TapColors.greenDark : TapColors.stoneExtraLight,
      ),
      child: Center(
        child: TapText(
          label.toUpperCase(),
          style: isSelected
              ? TapTextStyles.title.copyWith(
                  color: Colors.white,
                )
              : TapTextStyles.title,
        ),
      ),
    );
  }
}
