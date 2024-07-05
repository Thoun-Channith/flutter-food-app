import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_app/constants/uidata.dart';
import 'package:foodly_app/views/home/widgets/food_widget.dart';

class FoodCardList extends StatelessWidget {
  const FoodCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          foods.length,
          (index) {
            var food = foods[index];
            return FoodWidget(
              image: food['imageUrl'],
              title: food['title'],
              time: food['time'],
              price: food['price'],
            );
          },
        ),
      ),
    );
  }
}
