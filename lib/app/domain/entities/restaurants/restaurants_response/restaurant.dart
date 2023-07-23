class Restaurant {
  String? name;
  String? averagecost;
  String? averagerating;
  String? address;
  String? hours;
  String? phone;

  Restaurant({
    this.name,
    this.averagecost,
    this.averagerating,
    this.address,
    this.hours,
    this.phone,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        name: json['name'] as String?,
        averagecost: json['averagecost'] as String?,
        averagerating: json['averagerating'] as String?,
        address: json['address'] as String?,
        hours: json['hours'] as String?,
        phone: json['phone'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'averagecost': averagecost,
        'averagerating': averagerating,
        'address': address,
        'hours': hours,
        'phone': phone,
      };
}
