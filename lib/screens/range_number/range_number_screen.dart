import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:random_app/controllers/random_controller.dart';

class RangeNumberScreen extends StatelessWidget {
  const RangeNumberScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<RandomController>(
        init: RandomController(),
        builder: (rController) => Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text('اعداد تصادفی'),
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
                  margin: EdgeInsets.symmetric(vertical: 12.0),
                  width: double.infinity,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Center(
                      child: Text(
                    'محاسبه',
                    style: Theme.of(context).textTheme.button.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Obx(() => Text("${rController.resultNumber.value}")),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
