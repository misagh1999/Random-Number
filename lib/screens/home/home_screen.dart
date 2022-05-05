import 'package:flutter/material.dart';
import 'package:random_app/constants.dart';
import 'package:random_app/screens/dice/dice_screen.dart';
import 'package:random_app/screens/range_number/range_number_screen.dart';
import 'package:random_app/widgets/app_bar.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "خانه"),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(),
              InkWell(
                onTap: () {
                  Get.to(RangeNumberScreen());
                },
                child: Container(
                  width: Get.width / 2.25,
                  height: Get.width / 2.25,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                    child: Text(
                      "اعداد تصادفی",
                      style: TextStyle(fontFamily: "Black", fontSize: 24),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              InkWell(
                onTap: () {
                  Get.to(DiceScreen());
                },
                child: Container(
                  width: Get.width / 2.25,
                  height: Get.width / 2.25,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Center(
                    child: Text(
                      "تاس",
                      style: TextStyle(fontFamily: "Black", fontSize: 24),
                    ),
                  ),
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
