import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurants_finder/app/core/utils/widgets_util.dart';
import 'package:restaurants_finder/app/domain/entities/restaurants/restaurants_response/restaurant.dart';
import 'package:restaurants_finder/app/routes/app_pages.dart';
import 'package:shimmer/shimmer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/restaurants_controller.dart';

class RestaurantsView extends GetView<RestaurantsController> {
  const RestaurantsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants'),
        centerTitle: true,
      ),
      body: Obx(() => controller.loading.isTrue
          ? Shimmer.fromColors(
              baseColor: Colors.grey.shade200,
              highlightColor: Colors.grey.shade300,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return buildSkeltion();
                  }),
            )
          : controller.allrestaurants.isEmpty
              ? "No restaurants found".text.make()
              : Column(
                  children: [
                    ListView.builder(
                        itemCount: controller.allrestaurants.length,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          final res = controller.allrestaurants[index];
                          return BuildRestaurants(res: res).marginAll(10).onInkTap(() {
                            Get.toNamed(Routes.RESTAURANT_DETAIL,
                                arguments: res);
                          });
                        }).expand(),
                  ],
                )),
    );
  }
}

class BuildRestaurants extends StatelessWidget {
  const BuildRestaurants({
    super.key,
    required this.res,
  });

  final Restaurant res;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              res.name!.text.bold.make(),
              10.heightBox,
              "Average cost ${res.averagecost}"
                  .text
                  .make()
            ],
          ).expand(),
          const Icon(Icons.star_rate_rounded),
          10.widthBox,
          res.averagerating!.text.make()
        ],
      ).p(10),
    );
  }
}
