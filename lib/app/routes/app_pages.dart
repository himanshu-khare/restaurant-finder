import 'package:get/get.dart';

import '../modules/cities/bindings/cities_binding.dart';
import '../modules/cities/views/cities_view.dart';
import '../modules/restaurant_detail/bindings/restaurant_detail_binding.dart';
import '../modules/restaurant_detail/views/restaurant_detail_view.dart';
import '../modules/restaurants/bindings/restaurants_binding.dart';
import '../modules/restaurants/views/restaurants_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANT_DETAIL,
      page: () => const RestaurantDetailView(),
      binding: RestaurantDetailBinding(),
    ),
    GetPage(
      name: _Paths.CITIES,
      page: () => const CitiesView(),
      binding: CitiesBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANTS,
      page: () => const RestaurantsView(),
      binding: RestaurantsBinding(),
    ),
  ];
}
