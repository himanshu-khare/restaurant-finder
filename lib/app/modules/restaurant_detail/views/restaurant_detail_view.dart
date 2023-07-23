import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/restaurant_detail_controller.dart';

class RestaurantDetailView extends GetView<RestaurantDetailController> {
  const RestaurantDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${controller.res.name}'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContent("Restaurant Name: ${controller.res.name}"),
          buildContent("Restaurant Phone:  ${controller.res.phone}"),
          buildContent("Restaurant Address: ${controller.res.address}"),
          buildContent("Restaurant Average cost: ${controller.res.averagecost}"),
          buildContent("Restaurant Average rating: ${controller.res.averagerating}"),
          buildContent("Restaurant hours: ${controller.res.hours}"),
       
        ],
      ),
    );
  }

  Widget buildContent(String content ) => content.text.make().marginAll(10);
}
