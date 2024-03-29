import 'package:flutter/material.dart';
import 'package:random_app/constants.dart';
import 'package:random_app/screens/dice/dice_screen.dart';
import 'package:random_app/screens/range_number/range_number_screen.dart';
import 'package:random_app/widgets/app_bar.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Home"),
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
                              'Random Number',
                              style: TextStyle(
                                  fontFamily: Fonts.Black, fontSize: 20),
                            ),
                            Text(
                              'Random Numebr Generator',
                              style: TextStyle(
                                  fontFamily: Fonts.Medium,
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
              leading: Icon(Icons.person),
              title: Text('About Us'),
              onTap: () {
                // todo
                Get.back();
                Get.defaultDialog(
                    title: "About Us",
                    middleText: "Developed by M. Misaghpour" +
                        "\n" +
                        "misagh1999@gmail.com",
                    textCancel: "Close",
                    cancelTextColor: kPrimaryColor);
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
                      "Random Number",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: Fonts.Black, fontSize: 24),
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
                      "Dice",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: Fonts.Black, fontSize: 24),
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
