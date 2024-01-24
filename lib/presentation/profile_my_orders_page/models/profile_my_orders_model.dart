import '../../../core/app_export.dart';
import 'orderslist_item_model.dart';

/// This class defines the variables used in the [profile_my_orders_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileMyOrdersModel {
  Rx<List<OrderslistItemModel>> orderslistItemList = Rx([
    OrderslistItemModel(
        image: ImageConstant.imgImage110x109.obs,
        price: "12.50".obs,
        shortsInYellow: "shorts in Yellow".obs,
        one: "1".obs),
    OrderslistItemModel(
        image: ImageConstant.imgImage12.obs,
        price: "99.30".obs,
        shortsInYellow: "Print Maxi Dress".obs,
        one: "1".obs)
  ]);
}
