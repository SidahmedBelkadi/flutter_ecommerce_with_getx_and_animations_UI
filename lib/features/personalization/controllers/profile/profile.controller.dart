import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find<ProfileController>();

  GlobalKey<FormState> updateFullNameFormKey = GlobalKey<FormState>();
  TextEditingController fullName = TextEditingController();
}
