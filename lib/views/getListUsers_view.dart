import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapi/controllers/getUsersList_controller.dart';

class GetListUsers extends StatelessWidget {
  GetListUsers({Key? key}) : super(key: key);
  final GetUsrLstC getUsrLstC = Get.put(GetUsrLstC());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Get List Users'),
        ),
        body: Container(
          child: Center(
            child: Obx(
              () => Text(getUsrLstC.getuserlisting.length > 0
                  ? getUsrLstC.getuserlisting[0].firstName!
                  : 'no data'),
            ),
          ),
        ),
      ),
    );
  }
}
