import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var margin = 0.obs;
  var duration = 0.obs;
  var color = Colors.blue.obs;
  var wide = 300.obs;
  var opacity = 1.obs;

  void changemargin() {
    margin.value = 50;
    color.value = Colors.orange;
    wide.value = 500;
    opacity.value = 1;
  }

  void changecolor() {
    color.value = Colors.red;
  }

  void changewide() {
    wide.value = 500;
  }

  void changeopacity() {
    opacity.value = 0;
  }
}
