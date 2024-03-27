import 'package:ecommmerce/config/app_routes.dart';
import 'package:ecommmerce/features/authentication/forget_password/screens/forget_password.screen.dart';
import 'package:ecommmerce/features/authentication/forget_password/screens/forget_password_otp.dart';
import 'package:ecommmerce/features/authentication/on_boarding/screens/on_boarding.screen.dart';
import 'package:ecommmerce/features/authentication/sign_in/screens/sign_in.screen.dart';
import 'package:ecommmerce/features/authentication/sign_up/screens/sign_up.screen.dart';
import 'package:ecommmerce/utils/core/middlewares/init.middleware.dart';
import 'package:get/get.dart';

Transition routeTransition = Transition.rightToLeft;

List<GetPage<dynamic>>? getPages = [
  // ---- OnBoarding ----- //
  GetPage(
    name: AppRoutes.onBoarding,
    page: () => const OnBoardingScreen(),
    middlewares: [InitialMiddleware()],
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

// ---- Forget Password ----- //
  GetPage(
    name: AppRoutes.forgetPassword,
    page: () => const ForgetPasswordScreen(),
    transition: routeTransition,
  ),

  // ---- Forget Password OTP ----- //
  GetPage(
    name: AppRoutes.forgetPasswordOtpVerification,
    page: () => const ForgetPasswordOtpVerificationScreen(),
    transition: routeTransition,
  ),
];
