import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_app/common/app_style.dart';
import 'package:foodly_app/common/reusable_text.dart';
import 'package:foodly_app/constants/constants.dart';

class RestaurantsTile extends StatelessWidget {
  const RestaurantsTile({
    super.key,
    required this.restaurants,
  });

  final dynamic restaurants;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            height: 70.h,
            width: width,
            decoration: BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 70.w,
                          height: 70.h,
                          child: Image.network(
                            restaurants['imageUrl'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                            color: kGray.withOpacity(0.6),
                            height: 16.h,
                            width: width,
                            child: RatingBarIndicator(
                              rating: 5,
                              itemCount: 5,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: kSecondary,
                              ),
                              itemSize: 12.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: restaurants['title'],
                        style: appStyle(
                          11,
                          kDark,
                          FontWeight.w400,
                        ),
                      ),
                      ReusableText(
                        text: "Delivery time : ${restaurants['time']}",
                        style: appStyle(
                          11,
                          kGray,
                          FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.7,
                        child: Text(
                          restaurants['coords']['address'],
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(9, kGray, FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 5.h,
            right: 6.w,
            child: Container(
              width: 60.w,
              height: 19.h,
              decoration: BoxDecoration(
                color: restaurants['isAvailable'] == true ||
                        restaurants['isAvailable'] == null
                    ? kPrimary
                    : kSecondaryLight,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: ReusableText(
                    text: restaurants['isAvailable'] == true ||
                            restaurants['isAvailable'] == null
                        ? "Open"
                        : "Closed",
                    style: appStyle(12, kLightWhite, FontWeight.w600)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
