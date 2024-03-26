import 'package:ecommmerce/config/app_routes.dart';
import 'package:ecommmerce/features/authentication/on_boarding/screens/on_boarding.screen.dart';
import 'package:ecommmerce/features/authentication/sign_in/screens/sign_in.screen.dart';
import 'package:ecommmerce/features/authentication/sign_up/screens/sign_up.screen.dart';
import 'package:get/get.dart';

Transition routeTransition = Transition.rightToLeft;

List<GetPage<dynamic>>? getPages = [
  // ---- OnBoarding ----- //
  GetPage(
    name: AppRoutes.onBoarding,
    page: () => const OnBoardingScreen(),
    transition: routeTransition,
  ),

  // ---- Sign In ----- //
  GetPage(
    name: AppRoutes.signIn,
    page: () => const SignInScreen(),
    transition: routeTransition,
  ),

  // ---- Sign Up ----- //
  GetPage(
    name: AppRoutes.signUp,
    page: () => const SignUpScreen(),
    transition: routeTransition,
  ),
];
