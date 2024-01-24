import 'package:duong_luong_s_application/core/app_export.dart';
import 'package:duong_luong_s_application/presentation/product_discover_drawer_draweritem/models/product_discover_drawer_model.dart';

/// A controller class for the ProductDiscoverDrawerDraweritem.
///
/// This class manages the state of the ProductDiscoverDrawerDraweritem, including the
/// current productDiscoverDrawerModelObj
class ProductDiscoverDrawerController extends GetxController {
  Rx<ProductDiscoverDrawerModel> productDiscoverDrawerModelObj =
      ProductDiscoverDrawerModel().obs;
}
