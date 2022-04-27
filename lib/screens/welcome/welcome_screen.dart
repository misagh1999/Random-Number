import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_app/screens/range_number/range_number_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('خوش آمدید'),
            InkWell(
              onTap: () {
                Get.to(RangeNumberScreen());
              },
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber),
                child: Text(
                  'صفحه اصلی',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
