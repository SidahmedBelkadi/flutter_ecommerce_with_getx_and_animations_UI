import 'package:ecommmerce/config/routing/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import '../../../../utils/helpers/dialog.helper.dart';

class SignUpController extends GetxController {
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();
  RxBool privacyAndTerms = false.obs;
  RxBool passwordInvisible = true.obs;
  RxBool passwordConfirmationInvisible = true.obs;

  void togglePassword() {
    passwordInvisible(!passwordInvisible.value);
  }

  void togglePasswordConfirmation() {
    passwordConfirmationInvisible(!passwordConfirmationInvisible.value);
  }

  void togglePrivacyPolicyAndTermsOfUse() {
    privacyAndTerms(!privacyAndTerms.value);
  }

  void signUp(BuildContext context) {
    // ---- Two Steps of validation
    // Step 01:
    if (fullName.text == "" ||
        email.text == "" ||
        password.text == "" ||
        phoneNumber.text == "" ||
        password.text == "" ||
        passwordConfirmation.text == "") {
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
    FormState? formState = signUpFormKey.currentState;
    if (!formState!.validate()) {
      return;
    }

    // --- check privacy policy
    if (!privacyAndTerms.value) {
      AppDialog.privacyPolicyDialog(
        onConfirm: () {
          privacyAndTerms.value = true;
          Get.back();
        },
      );
      return;
    }

    Get.toNamed(AppRoutes.signUpVerification);
  }
}
