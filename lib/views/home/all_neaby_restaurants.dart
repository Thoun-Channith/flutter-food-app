import 'package:flutter/material.dart';
import 'package:foodly_app/common/app_style.dart';
import 'package:foodly_app/common/background_container.dart';
import 'package:foodly_app/common/reusable_text.dart';
import 'package:foodly_app/constants/constants.dart';
import 'package:foodly_app/constants/uidata.dart';
import 'package:foodly_app/views/home/widgets/restaurants_tile.dart';

class AllNeabyRestaurants extends StatelessWidget {
  const AllNeabyRestaurants({super.key});

  @override
  Widget build(BuildContext ontext) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        centerTitle: true,
        title: ReusableText(
          text: 'All Neaby Restaurants',
          style: appStyle(
            13,
            kGray,
            FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: BackgroundContainer(
          color: kOffWhite,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
