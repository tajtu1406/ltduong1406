import '../main_landing_screen/widgets/frame_item_widget.dart';
import '../main_landing_screen/widgets/mainlanding_item_widget.dart';
import '../main_landing_screen/widgets/price_item_widget.dart';
import 'controller/main_landing_controller.dart';
import 'models/frame_item_model.dart';
import 'models/mainlanding_item_model.dart';
import 'models/price_item_model.dart';
import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:duong_luong_s_application/core/utils/validation_functions.dart';
import 'package:duong_luong_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:duong_luong_s_application/widgets/app_bar/appbar_title.dart';
import 'package:duong_luong_s_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:duong_luong_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:duong_luong_s_application/widgets/custom_drop_down.dart';
import 'package:duong_luong_s_application/widgets/custom_elevated_button.dart';
import 'package:duong_luong_s_application/widgets/custom_outlined_button.dart';
import 'package:duong_luong_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MainLandingScreen extends GetWidget<MainLandingController> {
  MainLandingScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildSeasonSale(),
                  SizedBox(height: 66.v),
                  Text(
                    "lbl_trending_now".tr.toUpperCase(),
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 34.v),
                  _buildCategoriesOption(),
                  SizedBox(height: 32.v),
                  _buildFrame(),
                  SizedBox(height: 54.v),
                  _buildActualCategories(),
                  SizedBox(height: 48.v),
                  _buildOnlyTrustedBrands(),
                  SizedBox(height: 45.v),
                  _buildNewArrival(),
                  SizedBox(height: 43.v),
                  Text(
                    "msg_recomended_looks".tr.toUpperCase(),
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 44.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        right: 98.h,
                      ),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_gender2".tr,
                                  style: CustomTextStyles.titleSmallff6d747c,
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style: CustomTextStyles.titleSmallff848b93,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: CustomDropDown(
                              width: 63.h,
                              icon: Container(
                                margin: EdgeInsets.only(left: 6.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgChevronright2,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                ),
                              ),
                              hintText: "lbl_female".tr,
                              items: controller.mainLandingModelObj.value
                                  .dropdownItemList!.value,
                              onChanged: (value) {
                                controller.onSelected(value);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 23.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_style2".tr,
                                    style: CustomTextStyles.titleSmallff6d747c,
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style: CustomTextStyles.titleSmallff848b93,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: CustomDropDown(
                              width: 83.h,
                              icon: Container(
                                margin: EdgeInsets.only(left: 6.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgChevronright2,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                ),
                              ),
                              hintText: "lbl_partywear".tr,
                              items: controller.mainLandingModelObj.value
                                  .dropdownItemList1!.value,
                              onChanged: (value) {
                                controller.onSelected1(value);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_price_range2".tr,
                                    style: CustomTextStyles.titleSmallff6d747c,
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style: CustomTextStyles.titleSmallff848b93,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: CustomDropDown(
                              width: 31.h,
                              icon: Container(
                                margin: EdgeInsets.only(left: 2.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgChevronright2,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                ),
                              ),
                              hintText: "lbl_all".tr,
                              items: controller.mainLandingModelObj.value
                                  .dropdownItemList2!.value,
                              onChanged: (value) {
                                controller.onSelected2(value);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 21.v),
                  _buildRecomended(),
                  SizedBox(height: 49.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 32.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 64.v),
                  _buildContact(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildFooter(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 32.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 22.v,
          bottom: 26.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_shopsie".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame5732,
          margin: EdgeInsets.fromLTRB(16.h, 21.v, 16.h, 26.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeasonSale() {
    return Container(
      decoration: AppDecoration.fillGray,
      child: Column(
        children: [
          SizedBox(height: 24.v),
          SizedBox(
            height: 362.v,
            width: 360.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage61,
                  height: 362.v,
                  width: 360.h,
                  radius: BorderRadius.vertical(
                    top: Radius.circular(200.h),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 59.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration.shadow.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL200,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 224.v),
                        Text(
                          "lbl_season_sale".tr.toUpperCase(),
                          style: theme.textTheme.displaySmall,
                        ),
                        SizedBox(height: 4.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_up_to".tr.toUpperCase(),
                                style: CustomTextStyles.titleMediumffffffff,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "lbl_60_off".tr.toUpperCase(),
                                style:
                                    CustomTextStyles.displaySmallLatoffe0e2e4,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          CustomImageView(
            imagePath: ImageConstant.imgUnion,
            height: 48.v,
            width: 134.h,
          ),
          SizedBox(height: 48.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage60,
            height: 123.v,
            width: 390.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAll() {
    return CustomElevatedButton(
      height: 32.v,
      width: 48.h,
      text: "lbl_all".tr,
      buttonTextStyle: CustomTextStyles.bodyMediumPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildDresses() {
    return CustomElevatedButton(
      height: 32.v,
      width: 80.h,
      text: "lbl_dresses".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }

  /// Section Widget
  Widget _buildAccessories() {
    return CustomElevatedButton(
      height: 32.v,
      width: 103.h,
      text: "lbl_accessories".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }

  /// Section Widget
  Widget _buildDresses1() {
    return CustomElevatedButton(
      height: 32.v,
      width: 66.h,
      text: "lbl_dresses".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }

  /// Section Widget
  Widget _buildCategoriesOption() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 53.h,
        ),
        child: Row(
          children: [
            _buildAll(),
            _buildDresses(),
            _buildAccessories(),
            _buildDresses1(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return SizedBox(
      height: 296.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 10.h,
            );
          },
          itemCount:
              controller.mainLandingModelObj.value.frameItemList.value.length,
          itemBuilder: (context, index) {
            FrameItemModel model =
                controller.mainLandingModelObj.value.frameItemList.value[index];
            return FrameItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildActualCategories() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Text(
            "msg_actual_categories".tr.toUpperCase(),
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 34.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle7,
            height: 386.v,
            width: 358.h,
          ),
          SizedBox(height: 26.v),
          Text(
            "lbl_outerwear".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_raincoats_sweaters".tr,
            style: CustomTextStyles.bodySmallBluegray400,
          ),
          SizedBox(height: 24.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle7386x358,
            height: 386.v,
            width: 358.h,
          ),
          SizedBox(height: 26.v),
          Text(
            "lbl_leather_shoes".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_shoes_sandals".tr,
            style: CustomTextStyles.bodySmallBluegray400,
          ),
          SizedBox(height: 24.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle8,
            height: 386.v,
            width: 358.h,
          ),
          SizedBox(height: 27.v),
          Text(
            "lbl_light_dresses".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
          SizedBox(height: 5.v),
          Text(
            "msg_evening_casual".tr,
            style: CustomTextStyles.bodySmallBluegray400,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOnlyTrustedBrands() {
    return Column(
      children: [
        Text(
          "msg_only_trusted_brands".tr.toUpperCase(),
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 37.v),
        Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 59.v,
              crossAxisCount: 3,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .mainLandingModelObj.value.mainlandingItemList.value.length,
            itemBuilder: (context, index) {
              MainlandingItemModel model = controller
                  .mainLandingModelObj.value.mainlandingItemList.value[index];
              return MainlandingItemWidget(
                model,
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNewArrival() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 48.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillBlack,
      child: Column(
        children: [
          SizedBox(height: 49.v),
          Text(
            "lbl_new_arrival".tr.toUpperCase(),
            style: CustomTextStyles.displaySmallGray40001,
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl_fall_2021".tr.toUpperCase(),
            style: CustomTextStyles.bodyLargeGray40001,
          ),
          SizedBox(height: 86.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1381,
            height: 354.v,
            width: 292.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(279.h),
            ),
          ),
          SizedBox(height: 40.v),
          CustomElevatedButton(
            width: 174.h,
            text: "lbl_explore".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryContainer,
            buttonTextStyle: CustomTextStyles.titleMediumPrimary,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyItNow() {
    return CustomOutlinedButton(
      text: "lbl_buy_it_now".tr,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildRecomended() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(5.h),
      decoration: AppDecoration.outlineGray300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1385,
            height: 407.v,
            width: 346.h,
          ),
          SizedBox(height: 33.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_in_this_look".tr,
              style: CustomTextStyles.bodyLarge16,
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              right: 21.h,
            ),
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0.v),
                    child: SizedBox(
                      width: 243.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.gray300,
                      ),
                    ),
                  );
                },
                itemCount: controller
                    .mainLandingModelObj.value.priceItemList.value.length,
                itemBuilder: (context, index) {
                  PriceItemModel model = controller
                      .mainLandingModelObj.value.priceItemList.value[index];
                  return PriceItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 19.v),
          _buildBuyItNow(),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContact() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.fillIndigo,
      child: Column(
        children: [
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage14,
            height: 204.v,
            width: 231.h,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          SizedBox(height: 42.v),
          Text(
            "lbl_get_20_off".tr.toUpperCase(),
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 15.v),
          Text(
            "msg_leave_your_email".tr,
            style: CustomTextStyles.bodyMediumBluegray400,
          ),
          SizedBox(height: 28.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextFormField(
                width: 234.h,
                controller: controller.emailController,
                hintText: "lbl_email".tr,
                hintStyle: CustomTextStyles.labelLargeBluegray400,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 12.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillPrimaryContainer,
                fillColor: theme.colorScheme.primaryContainer,
              ),
              CustomElevatedButton(
                height: 40.v,
                width: 114.h,
                text: "lbl_subscribe".tr,
                buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFooter() {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 22.h,
        bottom: 46.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_2021_shopsie".tr,
            style: theme.textTheme.bodySmall,
          ),
          Spacer(
            flex: 77,
          ),
          Text(
            "msg_privacy_cookies".tr,
            style: CustomTextStyles.bodySmallGray300,
          ),
          Spacer(
            flex: 22,
          ),
          Text(
            "lbl_ts_cs".tr,
            style: CustomTextStyles.bodySmallGray300,
          ),
        ],
      ),
    );
  }
}
