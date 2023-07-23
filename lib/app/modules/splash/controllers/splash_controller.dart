import 'package:get/get.dart';
import 'package:restaurants_finder/app/routes/app_pages.dart';

class SplashController extends GetxController {

  final duration = 4;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: duration), () {
      Get.offNamed(Routes.CITIES);
    });
  }

}
