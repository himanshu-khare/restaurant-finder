import 'restaurant.dart';

class RestaurantsResponse {
  List<Restaurant>? restaurants;

  RestaurantsResponse({this.restaurants});

  factory RestaurantsResponse.fromJson(Map<String, dynamic> json) {
    return RestaurantsResponse(
      restaurants: (json['restaurants'] as List<dynamic>?)
          ?.map((e) => Restaurant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'restaurants': restaurants?.map((e) => e.toJson()).toList(),
      };
}
