import 'controller/login_controller.dart';
import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:duong_luong_s_application/core/utils/validation_functions.dart';
import 'package:duong_luong_s_application/widgets/custom_elevated_button.dart';
import 'package:duong_luong_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:duong_luong_s_application/domain/facebookauth/facebook_auth_helper.dart';
import 'package:duong_luong_s_application/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: 249.h,
                                          margin: EdgeInsets.only(left: 8.h),
                                          child: Text(
                                              "msg_welcome_back_glad".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme.headlineSmall!
                                                  .copyWith(height: 1.50)))),
                                  SizedBox(height: 34.v),
                                  CustomTextFormField(
                                      controller: controller.emailController,
                                      hintText: "msg_enter_your_email".tr,
                                      textInputType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_email"
                                              .tr;
                                        }
                                        return null;
                                      }),
                                  SizedBox(height: 15.v),
                                  Obx(() => CustomTextFormField(
                                      controller: controller.passwordController,
                                      hintText: "msg_enter_your_password".tr,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 12.v, 23.h, 12.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 48.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword.value,
                                      contentPadding: EdgeInsets.only(
                                          left: 24.h,
                                          top: 15.v,
                                          bottom: 15.v))),
                                  SizedBox(height: 24.v),
                                  CustomElevatedButton(
                                      text: "lbl_login".tr,
                                      onPressed: () {
                                        onTapLogin();
                                      }),
                                  SizedBox(height: 38.v),
                                  _buildOrLoginWithDivider(),
                                  SizedBox(height: 21.v),
                                  _buildSocialAuthTen(),
                                  SizedBox(height: 43.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveanaccount();
                                      },
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl_don_t_have_an".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumff0b0c0c),
                                            TextSpan(
                                                text: "lbl_account".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumff0b0c0c),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "lbl_register_now".tr,
                                                style: CustomTextStyles
                                                    .titleSmallff5f6aff)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildOrLoginWithDivider() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: SizedBox(width: 112.h, child: Divider())),
          Text("lbl_or_login_with".tr,
              style: CustomTextStyles.bodyMediumGray600),
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: SizedBox(width: 111.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildSocialAuthTen() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 56.v,
          width: 168.h,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgSocialFacebookIc,
              height: 26.adaptSize,
              width: 26.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgSocialFacebookIc();
              })),
      Container(
          height: 56.v,
          width: 168.h,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgSocialGoogleIc,
              height: 26.adaptSize,
              width: 26.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgSocialGoogleIc();
              }))
    ]);
  }

  /// Navigates to the mainLandingScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.mainLandingScreen,
    );
  }

  onTapImgSocialFacebookIc() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgSocialGoogleIc() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.registerScreen,
    );
  }
}
