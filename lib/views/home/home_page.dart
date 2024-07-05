import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_app/common/custom_appbar.dart';
import 'package:foodly_app/common/custom_container.dart';
import 'package:foodly_app/common/heading.dart';
import 'package:foodly_app/constants/constants.dart';
import 'package:foodly_app/views/home/all_neaby_restaurants.dart';
import 'package:foodly_app/views/home/recommendations.dart';
import 'package:foodly_app/views/home/all_fastest_foods.dart';
import 'package:foodly_app/views/home/widgets/category_list.dart';
import 'package:foodly_app/views/home/widgets/food_list.dart';
import 'package:foodly_app/views/home/widgets/nearby_restaurants.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: const SizedBox(
          child: CustomeAppBar(),
        ),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: 'Nearby Restaurants',
                onTap: () {
                  Get.to(() => const AllNeabyRestaurants(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 600));
                },
              ),
              const NearbyResturant(),
              Heading(
                text: 'Try Something New',
                onTap: () {
                  Get.to(
                    () => const Recommendations(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 600),
                  );
                },
              ),
              const FoodCardList(),
              Heading(
                text: 'Fastest Foods Closer to You',
                onTap: () {
                  Get.to(() => const AllFastestFoods(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 600));
                },
              ),
              const FoodCardList(),
            ],
          ),
        ),
      ),
    );
  }
}
