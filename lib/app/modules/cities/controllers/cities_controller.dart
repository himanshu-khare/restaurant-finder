import 'dart:developer';

import 'package:get/get.dart';
import 'package:restaurants_finder/app/data/remote/repository/restaurants_repository_impl.dart';

class CitiesController extends GetxController {
  final loading = false.obs;
  final impl = RestaurantsRepositoryImpl();
  final cities = <String>[].obs;
  final allcities = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    getAllCities();
  }

  getAllCities() async {
    try {
      loading.value = true;
      cities.value = (await impl.getAllCities()).data?.cities ?? [];
      allcities.clear();
      allcities.addAll(cities);
      loading.value = false;
    } catch (err) {
      log("err $err");
      loading.value = false;
    }
  }
}
