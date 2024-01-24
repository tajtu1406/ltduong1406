import '../product_search_screen/widgets/productsearch_item_widget.dart';
import 'controller/product_search_controller.dart';
import 'models/productsearch_item_model.dart';
import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:duong_luong_s_application/widgets/app_bar/appbar_title_searchview.dart';
import 'package:duong_luong_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProductSearchScreen extends GetWidget<ProductSearchController> {
  const ProductSearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 29.v,
            right: 16.h,
          ),
          child: Obx(
            () => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 200.v,
                crossAxisCount: 2,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.productSearchModelObj.value
                  .productsearchItemList.value.length,
              itemBuilder: (context, index) {
                ProductsearchItemModel model = controller.productSearchModelObj
                    .value.productsearchItemList.value[index];
                return ProductsearchItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 56.v,
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "lbl_sl_iders".tr,
        controller: controller.searchController,
      ),
    );
  }
}
