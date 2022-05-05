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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: kSecondaryColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'اعداد تصادفی',
                              style:
                                  TextStyle(fontFamily: "Black", fontSize: 20),
                            ),
                            Text(
                              'تولید کننده اعداد تصادفی',
                              style: TextStyle(
                                  fontFamily: "Medium",
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          ],
                        ),
                        Spacer(),
                        SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              Assets.LOGO,
                            )),
                      ],
                    ),

                    Spacer(),
                    Text(
                      'v 0.0.2',
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    )
                    // Text(Get.)
                  ],
                )),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('امتیاز به برنامه'),
              onTap: () {
                // todo
                Get.back();
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('دیگر برنامه‌ها'),
              onTap: () {
                // todo
                Get.back();
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('درباره ما'),
              onTap: () {
                // todo
                Get.back();
                Get.defaultDialog(
                  title: "درباره ما",
                  middleText: "برنامه‌نویس: محمدحسین میثاق‌پور" + "\n" + "misagh1999@gmail.com",
                  textCancel: "بستن",
                  cancelTextColor: kPrimaryColor
                );
              },
            ),
          ],
        ),
      ),
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
