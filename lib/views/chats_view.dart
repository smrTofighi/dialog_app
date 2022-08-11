import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          SizedBox(
            height: size.height / 5,
            width: Get.width,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'وضعیت',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Text(
                        'دیدن همه',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: Get.width,
            height: size.height / 1.7,
            decoration: const BoxDecoration(
              color: SolidColors.scaffoldBGColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'پیام های اخیر',
                        style: TextStyle(fontSize: 22),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            color: Colors.yellow),
                        child: const Text('بایگانی ها'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
