import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_app/common/app_style.dart';
import 'package:foodly_app/common/background_container.dart';
import 'package:foodly_app/common/reusable_text.dart';
import 'package:foodly_app/constants/constants.dart';
import 'package:foodly_app/constants/uidata.dart';
import 'package:foodly_app/views/home/widgets/restaurants_tile.dart';

class AllNeabyRestaurants extends StatelessWidget {
  const AllNeabyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimary,
        centerTitle: true,
        title: ReusableText(
          text: 'All Neaby Restaurants',
          style: appStyle(
            13,
            kLightWhite,
            FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: BackgroundContainer(
          color: kOffWhite,
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                restaurants.length,
                (index) {
                  dynamic restaurant = restaurants[index];
                  return RestaurantsTile(
                    restaurants: restaurant,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
