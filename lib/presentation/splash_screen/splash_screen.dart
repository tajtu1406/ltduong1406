import 'controller/splash_controller.dart';
import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 261.v),
                child: Column(children: [
                  Text("lbl_shopsie".tr, style: theme.textTheme.displayLarge),
                  SizedBox(height: 24.v),
                  Text("msg_the_best_way_to".tr,
                      style: CustomTextStyles.bodyMediumGray600),
                  SizedBox(height: 5.v)
                ]))));
  }
}
