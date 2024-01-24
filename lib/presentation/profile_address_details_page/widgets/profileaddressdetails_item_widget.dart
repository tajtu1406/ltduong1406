import '../controller/profile_address_details_controller.dart';
import '../models/profileaddressdetails_item_model.dart';
import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileaddressdetailsItemWidget extends StatelessWidget {
  ProfileaddressdetailsItemWidget(
    this.profileaddressdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileaddressdetailsItemModel profileaddressdetailsItemModelObj;

  var controller = Get.find<ProfileAddressDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  profileaddressdetailsItemModelObj.homeAddress!.value,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgEdit21,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Obx(
                  () => Text(
                    profileaddressdetailsItemModelObj.edit!.value,
                    style: CustomTextStyles.titleSmallPrimary_1,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 27.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Obx(
                  () => Text(
                    profileaddressdetailsItemModelObj.addressCounter!.value,
                    style: CustomTextStyles.bodyMediumGray600,
                  ),
                ),
              ),
              Obx(
                () => Text(
                  profileaddressdetailsItemModelObj.amoySt!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Obx(
                  () => Text(
                    profileaddressdetailsItemModelObj.addressCounter1!.value,
                    style: CustomTextStyles.bodyMediumGray600,
                  ),
                ),
              ),
              Obx(
                () => Text(
                  profileaddressdetailsItemModelObj.amoySt1!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  profileaddressdetailsItemModelObj.city!.value,
                  style: CustomTextStyles.bodyMediumGray600,
                ),
              ),
              Obx(
                () => Text(
                  profileaddressdetailsItemModelObj.losAngeles!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  profileaddressdetailsItemModelObj.postalCode!.value,
                  style: CustomTextStyles.bodyMediumGray600,
                ),
              ),
              Obx(
                () => Text(
                  profileaddressdetailsItemModelObj.zero!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
