// import 'package:ecommmerce/utils/http/http_client.dart';
// import 'package:ecommmerce/utils/stripe/stripe_keys.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';

// abstract class StripePaymentManager {
//   static Future<void> makePayment({required int amount, String currency = 'USD'}) async {
//     try {
//       String clientSecret = await _getClientSecret(amount: (amount * 100).toString(), currency: currency);
//       await _initializePaymentSheet(clientSecret: clientSecret);
//       await Stripe.instance.presentPaymentSheet();
//     } catch (error) {
//       throw Exception(error.toString());
//     }
//   }

//   static Future<void> _initializePaymentSheet({required String clientSecret}) async {
//     await Stripe.instance.initPaymentSheet(
//       paymentSheetParameters:
//           SetupPaymentSheetParameters(paymentIntentClientSecret: clientSecret, merchantDisplayName: "Ecommerce_application"),
//     );
//   }

//   static Future<String> _getClientSecret({required String amount, required String currency}) async {
//     Map<String, dynamic> payload = {"amount": amount, "currency": currency};
//     var response = await AppHttpClient.post(
//       endpoint: AppStripeKeys.stripEndPoint,
//       token: AppStripeKeys.secretKey,
//       payload: payload,
//     );

//     return response.data['client_secret'];
//   }
// }
