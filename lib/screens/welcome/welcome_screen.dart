import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_app/constants.dart';
import 'package:random_app/screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), geToNextScreen);
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: SvgPicture.asset(
              Assets.BG_PATTERN,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  'عدد تصادفی',
                  style: TextStyle(fontFamily: Fonts.Black, fontSize: 26),
                ),
                Text(
                  'اپلیکیشن تولید کننده اعداد تصادفی',
                  style: TextStyle(fontSize: 16.0),
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                ),
                Spacer(),
                Text(
                  'برنامه‌نویس: محمدحسین میثاق‌پور',
                  style: TextStyle(fontFamily: Fonts.Medium),
                ),
                Text('v 0.0.2')
              ],
            ),
          ),
        ],
      ),
    );
  }

  geToNextScreen() {
    Get.off(HomeScreen());
  }
}
