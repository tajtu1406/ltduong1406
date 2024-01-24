import '../../../core/app_export.dart';
import 'productsearch_item_model.dart';

/// This class defines the variables used in the [product_search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductSearchModel {
  Rx<List<ProductsearchItemModel>> productsearchItemList = Rx([
    ProductsearchItemModel(
        longSleeveTshirt: ImageConstant.imgImage171x171.obs,
        longSleeveTShirt: "Long Sleeve T-shirt".obs),
    ProductsearchItemModel(
        longSleeveTshirt: ImageConstant.imgImage7.obs,
        longSleeveTShirt: "Sliders".obs),
    ProductsearchItemModel(
        longSleeveTshirt: ImageConstant.imgImage8.obs,
        longSleeveTShirt: "Slippers".obs),
    ProductsearchItemModel(
        longSleeveTshirt: ImageConstant.imgImage9.obs,
        longSleeveTShirt: "Long Sleeve Top".obs),
    ProductsearchItemModel(
        longSleeveTshirt: ImageConstant.imgImage10.obs,
        longSleeveTShirt: "Slip Dress".obs),
    ProductsearchItemModel(
        longSleeveTshirt: ImageConstant.imgImage11.obs,
        longSleeveTShirt: "Nike Slides".obs)
  ]);
}
