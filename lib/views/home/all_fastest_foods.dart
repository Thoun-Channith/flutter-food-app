import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_app/common/app_style.dart';
import 'package:foodly_app/common/background_container.dart';
import 'package:foodly_app/common/reusable_text.dart';
import 'package:foodly_app/constants/constants.dart';
import 'package:foodly_app/constants/uidata.dart';
import 'package:foodly_app/views/home/widgets/food_tile.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext ontext) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimary,
        centerTitle: true,
        title: ReusableText(
          text: 'All Fastest Foods',
          style: appStyle(
            13,
            kLightWhite,
            FontWeight.w600,
          ),
        ),
      ),
      body: BackgroundContainer(
        color: kOffWhite,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(
              foods.length,
              (index) {
                dynamic food = foods[index];
                return FoodTile(
                  food: food,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
