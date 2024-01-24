import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:duong_luong_s_application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(
    this.cartItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: cartItemModelObj.image!.value,
            height: 110.v,
            width: 109.h,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 233.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            cartItemModelObj.price!.value,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Obx(
                          () => Text(
                            cartItemModelObj.shortsInYellow!.value,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTrash2,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 34.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 31.v),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_qty2".tr,
                          style: CustomTextStyles.bodyMediumff6d747c,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlusSquare,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: Obx(
                    () => Text(
                      cartItemModelObj.one!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlusSquarePrimary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
