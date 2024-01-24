import '../controller/main_landing_controller.dart';
import '../models/frame_item_model.dart';
import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 171.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: frameItemModelObj.oliveplaindress!.value,
              height: 236.v,
              width: 171.h,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Obx(
            () => Text(
              frameItemModelObj.womenBlueSkinny!.value,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 15.v),
          Obx(
            () => Text(
              frameItemModelObj.price!.value,
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
