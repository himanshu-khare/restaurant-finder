import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurants_finder/app/core/utils/widgets_util.dart';
import 'package:restaurants_finder/app/routes/app_pages.dart';
import 'package:shimmer/shimmer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/cities_controller.dart';

class CitiesView extends GetView<CitiesController> {
  const CitiesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
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
          : controller.cities.isEmpty
              ? "No cities found".text.make()
              : Column(
                  children: [
                    CupertinoSearchTextField(
                      onChanged: (value) {
                        if (value.isEmpty) {
                          controller.cities.value = controller.allcities;
                          return;
                        }
                        controller.cities.value = controller.allcities
                            .where((p0) => p0.toLowerCase().contains(value))
                            .toList();
                      },
                    ).marginAll(10),
                    ListView.builder(
                        itemCount: controller.cities.length,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return controller.cities[index].text
                              .make()
                              .marginAll(10).onInkTap(() {
                                Get.toNamed(Routes.RESTAURANTS);
                              });
                        }).expand(),
                  ],
                )),
    );
  }


}
