import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'dart:js' as js;

import 'package:my_portfolio/constants/smsLinks.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI'm Phinehas \nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    js.context.callMethod('open', [Smslinks.call]);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yellowPrimary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 15.0,
                    ),
                  ),
                  child: const Text(
                    "Get in touch",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/myimage1.png",
            width: screenWidth / 2,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
