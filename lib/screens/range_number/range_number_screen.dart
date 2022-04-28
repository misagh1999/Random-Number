import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:random_app/constants.dart';
import 'package:random_app/controllers/random_controller.dart';

class RangeNumberScreen extends StatelessWidget {
  const RangeNumberScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اعداد تصادفی',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: GetBuilder<RandomController>(
        init: RandomController(),
        builder: (rController) => SafeArea(
          child: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Text('لطفا بازه‌ اعداد خود را وارد کنید'),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          rController.startNumber.value = int.parse(value);
                        },
                        textDirection: TextDirection.ltr,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: 'شروع',
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          rController.endNumber.value = int.parse(value);
                        },
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'پایان',
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)))),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () => rController.randomize(),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Center(
                        child: Text(
                      'محاسبه',
                      style: TextStyle(
                          fontFamily: "Bold",
                          color: Colors.white,
                          fontSize: 16.0),
                    )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Obx(() => Text(
                      "${rController.resultNumber.value}",
                      style: TextStyle(fontFamily: "Bold", fontSize: 28.0),
                    )),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
