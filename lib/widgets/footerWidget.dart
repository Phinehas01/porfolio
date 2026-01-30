import 'package:flutter/material.dart';

class Footerwidget extends StatelessWidget {
  const Footerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Text(
        "Portfolio coded by Phinehas with Flutter",
        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
}
