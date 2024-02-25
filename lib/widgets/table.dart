import 'package:flutter/material.dart';
import 'package:tap_assignment/helpers/borders.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/helpers/text.dart';

// custom table widgets

class TapTable extends StatelessWidget {
  final List<String> titles;
  final List<String> subTitles;

  const TapTable({
    super.key,
    required this.titles,
    required this.subTitles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: TapBorders.containerBorder.copyWith(
        color: TapColors.stoneExtraLight.withOpacity(0.2),
      ),
      child: Table(
        border: TapBorders.tableBorder,
        children: [
          TableRow(
            children: [
              TapTableCell(title: titles[0], subTitle: subTitles[0]),
              TapTableCell(title: titles[1], subTitle: subTitles[1]),
            ],
          ),
          TableRow(
            children: [
              TapTableCell(title: titles[2], subTitle: subTitles[2]),
              TapTableCell(title: titles[3], subTitle: subTitles[3]),
            ],
          ),
        ],
      ),
    );
  }
}

class TapTableCell extends StatefulWidget {
  final String title;
  final String subTitle;

  const TapTableCell({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  State<TapTableCell> createState() => _TapTableCellState();
}

class _TapTableCellState extends State<TapTableCell> {
  late List<String> split;
  late String first;

  @override
  void initState() {
    split = widget.subTitle.split(' ');
    first = split[0];
    split.removeAt(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TapText(
              widget.title.toUpperCase(),
              style: TapTextStyles.title,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                TapText(
                  first,
                  style: TapTextStyles.subTitle,
                ),
                TapText(
                  ' ${split.join()}',
                  style: TapTextStyles.subTitleOpacity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
