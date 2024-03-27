import 'package:ecommmerce/utils/constants/app_keys.dart';
import 'package:ecommmerce/utils/helpers/shared_preferences.helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../config/routing/app_routes.dart';

class InitialMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    bool? isOnBoardingAlreadyViewed =
        AppSharedPreferences.getBool(AppKeys.onBoardingKey);

    if (isOnBoardingAlreadyViewed == true) {
      return const RouteSettings(name: AppRoutes.signIn);
    }
    return null;
  }
}
