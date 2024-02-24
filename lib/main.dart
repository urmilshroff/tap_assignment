import 'package:flutter/material.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/pages/investment_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tap Invest',
      theme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: TapColors.greenLight),
        useMaterial3: true,
      ),
      home: const InvestmentDetailsPage(),
    );
  }
}
