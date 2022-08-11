import 'package:chat_app/constant/colors.dart';
import 'package:chat_app/views/chats_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class MainView extends StatelessWidget {
  MainView({Key? key}) : super(key: key);
  RxInt selectedIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SolidColors.themeColor,
      appBar: AppBar(
        backgroundColor: SolidColors.themeColor,
        title: const Text('پیام رسان'),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (() {}), icon: const Icon(Icons.notification_add))
        ],
      ),
      body: const ChatsView(),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key, required this.selectedIndex})
      : super(key: key);

  final RxInt selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SlidingClippedNavBar(
        backgroundColor: SolidColors.themeColor,
        onButtonPressed: (index) {
          selectedIndex.value = index;
        },
        iconSize: 30,
        activeColor: Colors.white,
        selectedIndex: selectedIndex.value,
        barItems: [
          BarItem(
            icon: Icons.call,
            title: 'تماس ها',
          ),
          BarItem(
            icon: Icons.message,
            title: 'پیام ها',
          ),
          BarItem(
            icon: Icons.person,
            title: 'پروفایل',
          ),

          /// Add more BarItem if you want
        ],
      ),
    );
  }
}
