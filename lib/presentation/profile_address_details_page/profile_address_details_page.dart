import '../profile_address_details_page/widgets/profileaddressdetails_item_widget.dart';
import 'controller/profile_address_details_controller.dart';
import 'models/profile_address_details_model.dart';
import 'models/profileaddressdetails_item_model.dart';
import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:duong_luong_s_application/core/utils/validation_functions.dart';
import 'package:duong_luong_s_application/widgets/custom_outlined_button.dart';
import 'package:duong_luong_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileAddressDetailsPage extends StatelessWidget {
  ProfileAddressDetailsPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ProfileAddressDetailsController controller = Get.put(
      ProfileAddressDetailsController(ProfileAddressDetailsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 38.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_address_1".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildAddress(),
                      SizedBox(height: 26.v),
                      Text(
                        "lbl_address_2".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildAddress1(),
                      SizedBox(height: 27.v),
                      Text(
                        "lbl_city".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 3.v),
                      _buildCity(),
                      SizedBox(height: 26.v),
                      Text(
                        "lbl_postal_code".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildPostalCode(),
                      SizedBox(height: 26.v),
                      Text(
                        "lbl_phone_number".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildPhoneNumber(),
                      SizedBox(height: 24.v),
                      _buildAddAnotherAddress(),
                      SizedBox(height: 26.v),
                      Text(
                        "msg_current_addresses".tr,
                        style: CustomTextStyles.titleSmallOnPrimarySemiBold,
                      ),
                      SizedBox(height: 20.v),
                      _buildProfileAddressDetails(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress() {
    return CustomTextFormField(
      controller: controller.addressController,
      hintText: "lbl_enter_address".tr,
    );
  }

  /// Section Widget
  Widget _buildAddress1() {
    return CustomTextFormField(
      controller: controller.addressController1,
      hintText: "lbl_enter_address".tr,
    );
  }

  /// Section Widget
  Widget _buildCity() {
    return CustomTextFormField(
      controller: controller.cityController,
      hintText: "lbl_enter_your_city".tr,
    );
  }

  /// Section Widget
  Widget _buildPostalCode() {
    return CustomTextFormField(
      controller: controller.postalCodeController,
      hintText: "msg_enter_postal_code".tr,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
      controller: controller.phoneNumberController,
      hintText: "msg_enter_phone_number".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildAddAnotherAddress() {
    return CustomOutlinedButton(
      text: "msg_add_another_address".tr,
    );
  }

  /// Section Widget
  Widget _buildProfileAddressDetails() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: controller.profileAddressDetailsModelObj.value
            .profileaddressdetailsItemList.value.length,
        itemBuilder: (context, index) {
          ProfileaddressdetailsItemModel model = controller
              .profileAddressDetailsModelObj
              .value
              .profileaddressdetailsItemList
              .value[index];
          return ProfileaddressdetailsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
