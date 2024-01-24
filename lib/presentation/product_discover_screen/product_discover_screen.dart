import '../product_discover_screen/widgets/productdiscoverlist_item_widget.dart';
import 'controller/product_discover_controller.dart';
import 'models/productdiscoverlist_item_model.dart';
import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:duong_luong_s_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:duong_luong_s_application/widgets/app_bar/appbar_title.dart';
import 'package:duong_luong_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDiscoverScreen extends GetWidget<ProductDiscoverController> {
  const ProductDiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 312.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 14.h,
                        crossAxisSpacing: 14.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.productDiscoverModelObj.value
                        .productdiscoverlistItemList.value.length,
                    itemBuilder: (context, index) {
                      ProductdiscoverlistItemModel model = controller
                          .productDiscoverModelObj
                          .value
                          .productdiscoverlistItemList
                          .value[index];
                      return ProductdiscoverlistItemWidget(model);
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 12.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowDown();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_shopsie".tr),
        styleType: Style.bgFill);
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }
}
