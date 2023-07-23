import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:restaurants_finder/app/domain/entities/restaurants/restaurants_response/restaurants_response.dart';
import 'package:restaurants_finder/app/domain/entities/cities/cities_response.dart';
import 'package:restaurants_finder/app/core/utils/app_utils.dart';
import 'package:restaurants_finder/app/domain/repository/irestaurants_repository.dart';

class RestaurantsRepositoryImpl implements IRestaurantsRepository{
  @override
  Future<DataState<CitiesResponse>> getAllCities() async {
     try {
      final httpResponse =
          await CommonRepository.getApiService().getAllCities();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      }
      return DataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      log("DioError ${e.response.toString()}");
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<RestaurantsResponse>> getAllRestaurants() async{
     try {
      final httpResponse =
          await CommonRepository.getApiService().getAllRestaurants();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      }
      return DataFailed(
        DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
          type: DioErrorType.response,
        ),
      );
    } on DioError catch (e) {
      log("DioError ${e.response.toString()}");
      return DataFailed(e);
    }
  }

}