import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/smsLinks.dart';
import 'package:my_portfolio/widgets/customTextfield.dart';
import 'package:simple_icons/simple_icons.dart';

import 'dart:js' as js;

class Contactsection extends StatelessWidget {
  const Contactsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        
        children: [
          // Text(
          //   "Get in touch",
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 24,
          //     color: CustomColor.whitePrimary,
          //   ),
          // ),
          // SizedBox(height: 50),
          // ConstrainedBox(
          //   constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
          //   child: LayoutBuilder(
          //     builder: (context, Constraints) {
          //       if (Constraints.maxWidth >= kMinDesktopWidth) {
          //         return buildnameEmailFieldDesktop();
          //       }
          //       return buildnameEmailFieldMobile();
          //     },
          //   ),
          // ),
          // const SizedBox(height: 15),
          // ConstrainedBox(
          //   constraints: BoxConstraints(maxWidth: 700),
          //   child: CustomTextfield(
          //     hintText: "Type your message here",

          //     maxLine: 20,
          //   ),
          // ),
          // const SizedBox(height: 20),
          // ConstrainedBox(
          //   constraints: BoxConstraints(maxWidth: 700),
          //   child: SizedBox(
          //     width: double.maxFinite,
          //     child: ElevatedButton(
          //       onPressed: () {},
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: CustomColor.yellowSecondary,
          //       ),
          //       child: Text(
          //         "Get in touch",
          //         style: TextStyle(color: Colors.white),
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 10),
          // ConstrainedBox(
          //   constraints: BoxConstraints(maxWidth: 300),
          //   child: const Divider(),
          // ),
          const SizedBox(height: 15),
          //Socials icon buttons
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [Smslinks.github]);
                },
                child: Icon(SimpleIcons.github),
              ),
              InkWell(onTap: () {
                js.context.callMethod('open', [Smslinks.linkedIn]);
              }, child: Icon(SimpleIcons.linkedin)),
              InkWell(onTap: () {
                js.context.callMethod('open', [Smslinks.facebook]);
              }, child: Icon(SimpleIcons.facebook)),
              InkWell(onTap: () {
                js.context.callMethod('open', [Smslinks.instagram]);
              }, child: Icon(SimpleIcons.instagram)),
              InkWell(onTap: () {
                js.context.callMethod('open', [Smslinks.x]);
              }, child: Icon(SimpleIcons.x)),
            ],
          ),
        ],
      ),
    );
  }

  Row buildnameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(child: CustomTextfield(hintText: "Your name")),
        SizedBox(width: 20),
        Flexible(child: CustomTextfield(hintText: "Your email")),
      ],
    );
  }

  Column buildnameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(child: CustomTextfield(hintText: "Your name")),
        SizedBox(height: 15),
        Flexible(child: CustomTextfield(hintText: "Your email")),
      ],
    );
  }
}
