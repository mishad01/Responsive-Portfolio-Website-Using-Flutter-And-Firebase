import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CopyrightView extends StatefulWidget {
  const CopyrightView({super.key});

  @override
  State<CopyrightView> createState() => _CopyrightViewState();
}

class _CopyrightViewState extends State<CopyrightView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      child: const Center(
        child: Text(
          "Developed with heart by Sakif Rahman Mishad © 2024.",
          style: TextStyle(
              fontFamily: "Lufga",
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.5),
        ),
      ),
    );
  }
}
