import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find<SignInController>();

  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool rememberMe = false.obs;
  RxBool passwordInvisible = true.obs;

  void togglePassword() {
    passwordInvisible(!passwordInvisible.value);
  }

  void toggleRememberMe() {
    rememberMe(!rememberMe.value);
  }

  void signIn(BuildContext context) {
    // ---- Two Steps of validation
    // Step 01:
    if (email.text == "" || password.text == "") {
      toastification.show(
        context: context,
        title: const Text('Oops!'),
        description: const Text("Please fill the form correctly."),
        autoCloseDuration: const Duration(seconds: 5),
        showProgressBar: false,
        type: ToastificationType.error,
        style: ToastificationStyle.flat,
      );
      return;
    }

    // Step 02:
    FormState? formState = signInFormKey.currentState;
    if (!formState!.validate()) {
      return;
    }
  }
}
