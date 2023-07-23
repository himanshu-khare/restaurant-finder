  import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildSkeltion() {
    return Container(
      height: 60,
      width: Get.width,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(
        left: 16,
        top: 28,
        right: 16,
      ),
    );
  }