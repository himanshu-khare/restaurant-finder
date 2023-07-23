import 'dart:developer';

class CitiesResponse {
  List<String>? cities;

  CitiesResponse({this.cities});

  factory CitiesResponse.fromJson(Map<String, dynamic> json) {
    log("json $json");
    return CitiesResponse(
      cities: (json['cities'] as List<dynamic>?)?.map((e) => e.toString()).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'cities': cities,
      };
}
