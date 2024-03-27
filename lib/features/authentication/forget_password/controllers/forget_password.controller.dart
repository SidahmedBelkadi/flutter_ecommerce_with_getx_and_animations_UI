import 'package:ecommmerce/config/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

class ForgetPasswordController extends GetxController {
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();

  void verify(BuildContext context) {
    if (email.text == "") {
      toastification.show(
        context: context,
        title: const Text('Oops!'),
        description: const Text("Please enter your email address."),
        autoCloseDuration: const Duration(seconds: 5),
        showProgressBar: false,
        type: ToastificationType.error,
        style: ToastificationStyle.flat,
      );
      return;
    }

    // Step 02:
    FormState? formState = forgetPasswordFormKey.currentState;
    if (!formState!.validate()) {
      return;
    }

    Get.offNamed(AppRoutes.forgetPasswordOtpVerification);
  }
}
