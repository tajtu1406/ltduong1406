import '../../../core/app_export.dart';
import 'profileaddressdetails_item_model.dart';

/// This class defines the variables used in the [profile_address_details_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileAddressDetailsModel {
  Rx<List<ProfileaddressdetailsItemModel>> profileaddressdetailsItemList = Rx([
    ProfileaddressdetailsItemModel(
        homeAddress: "Home address".obs,
        edit: "Edit".obs,
        addressCounter: "Address 1".obs,
        amoySt: " Amoy st, 592".obs,
        addressCounter1: "Address 2".obs,
        amoySt1: " Amoy st, 592".obs,
        city: "City".obs,
        losAngeles: "Los Angeles".obs,
        postalCode: "Postal code".obs,
        zero: "0000000".obs),
    ProfileaddressdetailsItemModel(
        homeAddress: "Home address".obs,
        edit: "Edit".obs,
        addressCounter: "Address 1".obs,
        amoySt: " Amoy st, 592".obs,
        addressCounter1: "Address 2".obs,
        amoySt1: " Amoy st, 592".obs,
        city: "City".obs,
        losAngeles: "Los Angeles".obs,
        postalCode: "Postal code".obs,
        zero: "0000000".obs)
  ]);
}
