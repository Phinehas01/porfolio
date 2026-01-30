import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key,
   this.controller,
   this.maxLine=1,
   this.hintText,
  });
  final TextEditingController? controller;
  final int maxLine;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      style: const TextStyle(color: CustomColor.ScaffoldBg),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.whitePrimary,
        focusedBorder: getInputborder,

        enabledBorder: getInputborder,
        border: getInputborder,

        hintText: hintText,
        hintStyle: const TextStyle(color: CustomColor.ScaffoldBg),
      ),
    );
  }

  OutlineInputBorder get getInputborder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
