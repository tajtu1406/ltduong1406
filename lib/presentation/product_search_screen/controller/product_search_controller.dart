import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:duong_luong_s_application/presentation/product_search_screen/models/product_search_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProductSearchScreen.
///
/// This class manages the state of the ProductSearchScreen, including the
/// current productSearchModelObj
class ProductSearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ProductSearchModel> productSearchModelObj = ProductSearchModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
