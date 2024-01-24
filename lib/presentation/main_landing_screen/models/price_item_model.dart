import '../../../core/app_export.dart';

/// This class is used in the [price_item_widget] screen.
class PriceItemModel {
  PriceItemModel({
    this.circleImage,
    this.price,
    this.cottonBlackDress,
    this.id,
  }) {
    circleImage = circleImage ?? Rx(ImageConstant.imgImage56x56);
    price = price ?? Rx("43.90");
    cottonBlackDress = cottonBlackDress ?? Rx("Cotton black dress");
    id = id ?? Rx("");
  }

  Rx<String>? circleImage;

  Rx<String>? price;

  Rx<String>? cottonBlackDress;

  Rx<String>? id;
}
