import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';

class TapSelectionButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  const TapSelectionButton({
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

class TapPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  const TapPrimaryButton({
    super.key,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null
          ? () async {
              // haptic feedback as long as button is tappable
              await HapticFeedback.mediumImpact();
              onTap!();
            }
          : null,
      child: Container(
        height: 42,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.25,
            color: TapColors.greenDark,
          ),
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [TapColors.greenLight, TapColors.greenDark],
          ),
        ),
        child: Center(
          child: TapText(
            label,
            style: TapTextStyles.primaryButtonLabel,
          ),
        ),
      ),
    );
  }
}
