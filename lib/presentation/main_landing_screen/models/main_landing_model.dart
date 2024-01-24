import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'mainlanding_item_model.dart';
import 'package:duong_luong_s_application/data/models/selectionPopupModel/selection_popup_model.dart';
import 'price_item_model.dart';

/// This class defines the variables used in the [main_landing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainLandingModel {
  Rx<List<FrameItemModel>> frameItemList = Rx([
    FrameItemModel(
        oliveplaindress: ImageConstant.imgImage.obs,
        womenBlueSkinny: "Olive plain dress".obs,
        price: " 13.99".obs),
    FrameItemModel(
        oliveplaindress: ImageConstant.imgImage236x171.obs,
        womenBlueSkinny: "Shoes on heels".obs,
        price: " 28.99".obs),
    FrameItemModel(
        oliveplaindress: ImageConstant.imgImage.obs,
        womenBlueSkinny: "Olive plain dress".obs,
        price: " 20.99".obs)
  ]);

  Rx<List<MainlandingItemModel>> mainlandingItemList = Rx([
    MainlandingItemModel(image: ImageConstant.imgImage15.obs),
    MainlandingItemModel(image: ImageConstant.imgImage16.obs),
    MainlandingItemModel(image: ImageConstant.imgImage17.obs),
    MainlandingItemModel(image: ImageConstant.imgImage18.obs),
    MainlandingItemModel(image: ImageConstant.imgImage19.obs),
    MainlandingItemModel(image: ImageConstant.imgImage20.obs)
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<PriceItemModel>> priceItemList = Rx([
    PriceItemModel(
        circleImage: ImageConstant.imgImage56x56.obs,
        price: "43.90".obs,
        cottonBlackDress: "Cotton black dress".obs),
    PriceItemModel(
        circleImage: ImageConstant.imgImage1.obs,
        price: "12.50".obs,
        cottonBlackDress: "Saddle shoulder bag with hardware ".obs),
    PriceItemModel(
        circleImage: ImageConstant.imgImage2.obs,
        price: "99.30".obs,
        cottonBlackDress: "Leather shoes".obs)
  ]);
}
