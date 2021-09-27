import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var currentIndex = 0.obs;

  getColor(int index) {
    return currentIndex.value == index ? Colors.amber : Colors.grey.shade200;
  }
}
