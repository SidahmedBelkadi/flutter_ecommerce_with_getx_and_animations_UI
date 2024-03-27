import 'package:ecommmerce/common/screens/main_screen.dart';
import 'package:ecommmerce/config/routing/app_routes.dart';
import 'package:ecommmerce/features/authentication/forget_password/screens/forget_password.screen.dart';
import 'package:ecommmerce/features/authentication/forget_password/screens/forget_password_otp.dart';
import 'package:ecommmerce/features/authentication/on_boarding/screens/on_boarding.screen.dart';
import 'package:ecommmerce/features/authentication/sign_in/screens/sign_in.screen.dart';
import 'package:ecommmerce/features/authentication/sign_up/screens/sign_up.screen.dart';
import 'package:ecommmerce/features/authentication/sign_up/screens/sign_up_otp.screen.dart';
import 'package:ecommmerce/features/shop/home/screens/home.screen.dart';
import 'package:ecommmerce/features/shop/profile/profile.screen.dart';
import 'package:ecommmerce/features/shop/store/store.screen.dart';
import 'package:ecommmerce/features/shop/wishlist/wishlist.screen.dart';
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

  // ---- Sign Up OTP ----- //
  GetPage(
    name: AppRoutes.signUpVerification,
    page: () => const SignUpOtpVerificationScreen(),
    transition: routeTransition,
  ),

  // ---- Main screen (Navigation Menu) ----- //
  GetPage(
    name: AppRoutes.main,
    page: () => const MainScreen(),
    transition: routeTransition,
  ),

  // ---- Home ----- //
  GetPage(
    name: AppRoutes.home,
    page: () => const HomeScreen(),
    transition: routeTransition,
  ),

  // ---- Store ----- //
  GetPage(
    name: AppRoutes.store,
    page: () => const StoreScreen(),
    transition: routeTransition,
  ),

  // ---- Wishlist ----- //
  GetPage(
    name: AppRoutes.wishlist,
    page: () => const WishListScreen(),
    transition: routeTransition,
  ),

  // ---- Profile ----- //
  GetPage(
    name: AppRoutes.profile,
    page: () => const ProfileScreen(),
    transition: routeTransition,
  ),
];
