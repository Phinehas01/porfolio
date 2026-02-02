import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

import 'dart:js' as js;

import 'package:my_portfolio/constants/smsLinks.dart';


class Getintouch extends StatelessWidget {
  const Getintouch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),

        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
              js.context.callMethod('open', [Smslinks.call]);

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.yellowSecondary,
              ),
              child: const Text(
                "Get in touch",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300),
          child: Divider(),
        ),
      ],
    );
  }
}
