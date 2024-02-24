import 'package:flutter/widgets.dart';
import 'package:tap_assignment/helpers/colors.dart';

class TapText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? align;

  const TapText(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: align,
    );
  }
}

class TapTextStyles {
  static const heading = TextStyle(
    color: TapColors.textActive,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 27,
  );

  static final heading40 = heading.copyWith(
    color: TapColors.textActive40,
  );

  static const headingButton = TextStyle(
    color: TapColors.greenDark,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 21,
  );

  static const title = TextStyle(
    color: TapColors.stoneDark,
    fontWeight: FontWeight.w600,
    fontSize: 10,
    height: 15,
  );

  static const subTitle = TextStyle(
    color: TapColors.stoneExtraDark,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 24,
  );

  static final subTitle40 = subTitle.copyWith(
    color: TapColors.textActive40,
  );

  static const body = TextStyle(
    color: TapColors.stoneDark,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 22.4,
  );

  static const bodyBold = TextStyle(
    color: TapColors.stoneExtraDark,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 22.4,
  );
}
