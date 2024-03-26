import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitialService extends GetxService {
  static InitialService get instance => Get.find();

  late SharedPreferences sharedPreferences;

  Future<InitialService> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => InitialService().init());
}
