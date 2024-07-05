import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_app/common/app_style.dart';
import 'package:foodly_app/common/reusable_text.dart';
import 'package:foodly_app/constants/constants.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 22.r,
                  backgroundColor: kSecondary,
                  backgroundImage: const NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: "Delivery to  ",
                        style: appStyle(
                          13,
                          kSecondary,
                          FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                          "National Road 4, Kampong Speu",
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(
                            11,
                            kGray,
                            FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              getTimeOfDay(),
              style: const TextStyle(fontSize: 35.0),
            )
          ],
        ),
      ),
    );
  }

  String getTimeOfDay() {
    var hour = DateTime.now().hour;
    if (hour >= 0 && hour < 12) {
      return " ☀️ ";
    } else if (hour >= 12 && hour < 16) {
      return " ⛅ ";
    } else {
      return " 🌙 ";
    }
  }
}
