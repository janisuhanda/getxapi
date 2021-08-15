import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/https/resquest.dart';
import 'package:getxapi/https/url.dart';
import 'package:getxapi/models/getUsersList_model.dart';

class GetUsrLstC extends GetxController {
  var getuserlisting = <DataGetUsersList>[].obs;

  @override
  void onInit() {
    apigetuserslisting(2);
    super.onInit();
  }

  void apigetuserslisting(int page) async {
    Future.delayed(
        Duration.zero,
        () => Get.dialog(Center(child: CircularProgressIndicator()),
            barrierDismissible: false));
    Request request =
        Request(url: urlGetUsersList + 'page=' + page.toString(), body: null);
    request.get().then((value) {
      GetUsersList getUsersList =
          GetUsersList.fromJson(json.decode(value.body));
      getuserlisting.value = getUsersList.data!;
      print(getUsersList.total);
      Get.back();
    }).catchError((onError) {
      print(onError);
      Get.back();
      Get.snackbar('title', 'message : error');
    });
  }
}
