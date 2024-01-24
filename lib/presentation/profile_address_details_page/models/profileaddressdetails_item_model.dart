import '../../../core/app_export.dart';

/// This class is used in the [profileaddressdetails_item_widget] screen.
class ProfileaddressdetailsItemModel {
  ProfileaddressdetailsItemModel({
    this.homeAddress,
    this.edit,
    this.addressCounter,
    this.amoySt,
    this.addressCounter1,
    this.amoySt1,
    this.city,
    this.losAngeles,
    this.postalCode,
    this.zero,
    this.id,
  }) {
    homeAddress = homeAddress ?? Rx("Home address");
    edit = edit ?? Rx("Edit");
    addressCounter = addressCounter ?? Rx("Address 1");
    amoySt = amoySt ?? Rx(" Amoy st, 592");
    addressCounter1 = addressCounter1 ?? Rx("Address 2");
    amoySt1 = amoySt1 ?? Rx(" Amoy st, 592");
    city = city ?? Rx("City");
    losAngeles = losAngeles ?? Rx("Los Angeles");
    postalCode = postalCode ?? Rx("Postal code");
    zero = zero ?? Rx("0000000");
    id = id ?? Rx("");
  }

  Rx<String>? homeAddress;

  Rx<String>? edit;

  Rx<String>? addressCounter;

  Rx<String>? amoySt;

  Rx<String>? addressCounter1;

  Rx<String>? amoySt1;

  Rx<String>? city;

  Rx<String>? losAngeles;

  Rx<String>? postalCode;

  Rx<String>? zero;

  Rx<String>? id;
}
