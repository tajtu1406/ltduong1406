import '../../../core/app_export.dart';

/// This class is used in the [productsearch_item_widget] screen.
class ProductsearchItemModel {
  ProductsearchItemModel({
    this.longSleeveTshirt,
    this.longSleeveTShirt,
    this.id,
  }) {
    longSleeveTshirt = longSleeveTshirt ?? Rx(ImageConstant.imgImage171x171);
    longSleeveTShirt = longSleeveTShirt ?? Rx("Long Sleeve T-shirt");
    id = id ?? Rx("");
  }

  Rx<String>? longSleeveTshirt;

  Rx<String>? longSleeveTShirt;

  Rx<String>? id;
}
