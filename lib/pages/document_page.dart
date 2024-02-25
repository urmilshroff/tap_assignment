import 'package:flutter/material.dart';
import 'package:tap_assignment/helpers/colors.dart';
import 'package:tap_assignment/pages/complete_page.dart';
import 'package:tap_assignment/widgets/buttons.dart';

class DocumentPage extends StatelessWidget {
  const DocumentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TapColors.backgroundLight,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/doc.png',
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 32),
              TapPrimaryButton(
                label: 'Sign Contract',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CompletePage(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
