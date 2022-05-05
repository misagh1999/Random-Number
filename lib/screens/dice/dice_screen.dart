import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:random_app/constants.dart';
import 'package:random_app/controllers/dice_controller.dart';
import 'package:random_app/widgets/app_bar.dart';
import 'package:get/get.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DiceController controller = Get.put(DiceController());
    return Scaffold(
      appBar: buildAppBar(title: 'تاس'),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Container(
                width: Get.width / 2.5,
                height: Get.width / 2.5,
                child: Obx(
                  () => SvgPicture.asset(
                    controller.dicePath.value,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  controller.repeatRoll();
                },
                child: Container(
                  width: Get.width / 2.25,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Center(
                    child: Text(
                      'چرخاندن',
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
