import 'package:flutter/material.dart';
import 'package:foodly_app/constants/constants.dart';
import 'package:foodly_app/controllers/taps_index_controller.dart';
import 'package:foodly_app/views/cart/cart_page.dart';
import 'package:foodly_app/views/home/home_page.dart';
import 'package:foodly_app/views/profile/profile_page.dart';
import 'package:foodly_app/views/search/search_page.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = [
    const HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TapsIndexController());
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            pageList[controller.tapIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                  elevation: 0.0,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedIconTheme: const IconThemeData(color: Colors.black),
                  selectedIconTheme: const IconThemeData(color: kSecondary),
                  onTap: (value) {
                    controller.setTapIndex = value;
                  },
                  currentIndex: controller.tapIndex,
                  items: [
                    BottomNavigationBarItem(
                        icon: controller.tapIndex == 0
                            ? const Icon(AntDesign.appstore1)
                            : const Icon(AntDesign.appstore_o),
                        label: 'Home'),
                    const BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: 'Search'),
                    const BottomNavigationBarItem(
                        icon: Badge(
                          label: Text('2'),
                          child: Icon(Icons.shopping_cart),
                        ),
                        label: 'Cart'),
                    BottomNavigationBarItem(
                        icon: controller.tapIndex == 3
                            ? const Icon(FontAwesome.user_circle)
                            : const Icon(FontAwesome.user_circle_o),
                        label: 'Profile'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
