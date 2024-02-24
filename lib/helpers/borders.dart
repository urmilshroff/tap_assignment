import 'package:flutter/material.dart';
import 'package:tap_assignment/helpers/colors.dart';

// define specifics of each border here

class TapBorders {
  static final containerBorder = BoxDecoration(
    border: Border.all(
      width: 1.25,
      color: TapColors.stoneExtraLight,
    ),
    borderRadius: BorderRadius.circular(8),
  );

  static final tableBorder = TableBorder.symmetric(
    inside: const BorderSide(
      width: 1.25,
      color: TapColors.stoneExtraLight,
    ),
  );
}
