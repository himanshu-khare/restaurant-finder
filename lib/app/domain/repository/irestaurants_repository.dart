import 'package:restaurants_finder/app/core/utils/app_utils.dart';
import 'package:restaurants_finder/app/domain/entities/cities/cities_response.dart';
import 'package:restaurants_finder/app/domain/entities/restaurants/restaurants_response/restaurants_response.dart';

abstract class IRestaurantsRepository {
  Future<DataState<CitiesResponse>> getAllCities();
  Future<DataState<RestaurantsResponse>> getAllRestaurants();
  
}
