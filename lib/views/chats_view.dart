import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: Get.width,
              height: Get.height / 1.6,
              decoration: const BoxDecoration(
                color: SolidColors.scaffoldBGColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: SizedBox(
                width: Get.width,
                height: Get.height,
                child: Column(
                  children: [
                    const Align(
                      child: Text('پیام های اخیر'),
                      alignment: Alignment.centerRight,
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
