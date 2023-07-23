import 'package:dio/dio.dart';
import 'package:restaurants_finder/app/core/constants/app_constants.dart';
import 'package:restaurants_finder/app/domain/entities/cities/cities_response.dart';
import 'package:restaurants_finder/app/domain/entities/restaurants/restaurants_response/restaurants_response.dart';
import 'package:retrofit/retrofit.dart';

part 'app_apis.g.dart';

@RestApi(baseUrl: serverBaseUrl)
abstract class AppApis {
  factory AppApis(Dio dio, {String baseUrl}) = _AppApis;

  @GET("58c843ce-580f-45cb-9152-1ba2579f2ed6")
  Future<HttpResponse<CitiesResponse>> getAllCities();

  @GET("c7dc313a-a270-43dd-8fb7-448db38f6ecb")
  Future<HttpResponse<RestaurantsResponse>> getAllRestaurants();
}
