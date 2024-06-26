import 'package:ecommmerce/common/screens/main_screen.dart';
import 'package:ecommmerce/config/routing/app_routes.dart';
import 'package:ecommmerce/features/administration/screens/categories/categories.admin.screen.dart';
import 'package:ecommmerce/features/administration/screens/home/home.admin.screen.dart';
import 'package:ecommmerce/features/administration/screens/orders/orders.admin.screen.dart';
import 'package:ecommmerce/features/personalization/screens/account/account.screen.dart';
import 'package:ecommmerce/features/personalization/screens/addresses/adresses.screen.dart';
import 'package:ecommmerce/features/personalization/screens/profile/profile.screen.dart';
import 'package:ecommmerce/features/shop/screens/cart/cart.screen.dart';
import 'package:ecommmerce/features/shop/screens/orders/orders.screen.dart';
import 'package:ecommmerce/features/shop/screens/product_detail/product_detail.screen.dart';
import 'package:ecommmerce/utils/core/middlewares/init.middleware.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/forget_password/forget_password.screen.dart';
import '../../features/authentication/screens/forget_password/forget_password_otp.dart';
import '../../features/authentication/screens/on_boarding/on_boarding.screen.dart';
import '../../features/authentication/screens/sign_in/sign_in.screen.dart';
import '../../features/authentication/screens/sign_up/sign_up.screen.dart';
import '../../features/authentication/screens/sign_up/sign_up_otp.screen.dart';
import '../../features/shop/screens/home/home.screen.dart';
import '../../features/shop/screens/store/store.screen.dart';
import '../../features/shop/screens/wishlist/wishlist.screen.dart';

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

  // ---- Cart ----- //
  GetPage(
    name: AppRoutes.cart,
    page: () => const CartScreen(),
    transition: routeTransition,
  ),

  // ---- Account ----- //
  GetPage(
    name: AppRoutes.account,
    page: () => const AccountScreen(),
    transition: routeTransition,
  ),

  // ---- Profile ----- //
  GetPage(
    name: AppRoutes.profile,
    page: () => const ProfileScreen(),
    transition: routeTransition,
  ),

  // ---- Addresses ----- //
  GetPage(
    name: AppRoutes.addresses,
    page: () => const AddressesScreen(),
    transition: routeTransition,
  ),

  // ---- Orders ----- //
  GetPage(
    name: AppRoutes.orders,
    page: () => const OrdersScreen(),
    transition: routeTransition,
  ),

  // ---- Product Detail ----- //
  GetPage(
    name: AppRoutes.productDetail,
    page: () => const ProductDetailScreen(),
    transition: routeTransition,
  ),

  //   ======= Administration ========== //
  /// Home
  GetPage(
    name: AppRoutes.adminHome,
    page: () => const AdminHomeScreen(),
    transition: routeTransition,
  ),

  /// Categories
  GetPage(
    name: AppRoutes.adminCategories,
    page: () => const AdminCategoriesScreen(),
    transition: routeTransition,
  ),

  /// Orders
  GetPage(
    name: AppRoutes.adminOrders,
    page: () => const AdminOrdersScreen(),
    transition: routeTransition,
  ),
];
