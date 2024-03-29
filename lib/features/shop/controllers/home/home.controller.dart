import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt bannersIndex = 0.obs;

  void updateCarouselIndex(int index) {
    bannersIndex(index);
  }
}
