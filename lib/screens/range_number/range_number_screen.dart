import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:random_app/constants.dart';
import 'package:random_app/controllers/random_controller.dart';
import 'package:random_app/widgets/app_bar.dart';

class RangeNumberScreen extends StatelessWidget {
  const RangeNumberScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "اعداد تصادفی"),
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
                      child: Obx(
                        () => TextField(
                          controller: rController.startTextController,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 18.0),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'شروع',
                              errorText: rController.startError.value.isNotEmpty
                                  ? rController.startError.value
                                  : null,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Obx(
                        () => TextField(
                          controller: rController.endTextController,
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18.0),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              errorText: rController.endError.value.isNotEmpty
                                  ? rController.endError.value
                                  : null,
                              hintText: 'پایان',
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)))),
                        ),
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
