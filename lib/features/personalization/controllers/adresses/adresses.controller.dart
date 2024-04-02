import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddressesController extends GetxController {
  static AddressesController get instance => Get.find<AddressesController>();

  GlobalKey<FormState> addNewAddressFormKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController postalCode = TextEditingController();
}
