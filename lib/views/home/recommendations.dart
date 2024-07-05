import 'package:flutter/material.dart';
import 'package:foodly_app/common/app_style.dart';
import 'package:foodly_app/common/reusable_text.dart';
import 'package:foodly_app/constants/constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext ontext) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        centerTitle: true,
        title: ReusableText(
          text: 'Recommendations',
          style: appStyle(
            13,
            kGray,
            FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
