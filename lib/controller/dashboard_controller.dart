import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DashBoardController extends GetxController {
  RxList reportMessageList = [
    {"icon": Icons.home, "title": "Test 1"},
    {"icon": Icons.home, "title": "Test 1"},
    {"icon": Icons.home, "title": "Test 1t"},
    {"icon": Icons.home, "title": "Test 1"},
    {"icon": Icons.home, "title": "Test 1"},
    {"icon": Icons.home, "title": "Test 1"},
    {"icon": Icons.home, "title": "CTest 1"},
  ].obs;
}
