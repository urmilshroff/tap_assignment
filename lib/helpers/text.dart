import 'package:flutter/widgets.dart';
import 'package:tap_assignment/helpers/colors.dart';

// custom text widget helper

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

// define all text styles used in the app here

class TapTextStyles {
  static const heading = TextStyle(
    color: TapColors.textActive,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static final headingAlt = heading.copyWith(
    color: TapColors.stoneDark,
  );

  static const headingButton = TextStyle(
    color: TapColors.greenDark,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static const title = TextStyle(
    color: TapColors.stoneDark,
    fontWeight: FontWeight.w600,
    fontSize: 10,
  );

  static const subTitle = TextStyle(
    color: TapColors.stoneExtraDark,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static final subTitleOpacity = subTitle.copyWith(
    color: TapColors.textActiveOpacity,
  );

  static const body = TextStyle(
    color: TapColors.stoneDark,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const bodyBold = TextStyle(
    color: TapColors.stoneExtraDark,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
}
