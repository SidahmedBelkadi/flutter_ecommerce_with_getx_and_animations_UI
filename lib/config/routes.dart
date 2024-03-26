import 'package:ecommmerce/config/app_routes.dart';
import 'package:ecommmerce/features/authentication/on_boarding/screens/on_boarding.screen.dart';
import 'package:ecommmerce/features/authentication/sign_in/screens/sign_in.screen.dart';
import 'package:get/get.dart';

Transition routeTransition = Transition.rightToLeft;

List<GetPage<dynamic>>? getPages = [
  GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoardingScreen(),
      transition: routeTransition),
  GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInScreen(),
      transition: routeTransition),
];
