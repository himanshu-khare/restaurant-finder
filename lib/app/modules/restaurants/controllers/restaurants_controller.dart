import 'dart:developer';

import 'package:get/get.dart';
import 'package:restaurants_finder/app/data/remote/repository/restaurants_repository_impl.dart';
import 'package:restaurants_finder/app/domain/entities/restaurants/restaurants_response/restaurant.dart';

class RestaurantsController extends GetxController {
  final loading = false.obs;
  final impl = RestaurantsRepositoryImpl();
  final allrestaurants = <Restaurant>[].obs;

  @override
  void onInit() {
    super.onInit();
    getAllCities();
  }

  getAllCities() async {
    try {
      loading.value = true;
      allrestaurants.value = (await impl.getAllRestaurants()).data?.restaurants ?? [];
      loading.value = false;
    } catch (err) {
      log("err $err");
      loading.value = false;
    }
  }
}
