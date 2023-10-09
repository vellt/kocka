import 'package:diece_gyak/controllers/diece_view_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DieceView extends StatelessWidget {
  DieceViewController controller = Get.put(DieceViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DieceViewController>(
      init: controller,
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: CupertinoButton(
              onPressed: () {
                controller.newRandomNumber();
              },
              child: Image.asset("images/dice${controller.diceFaceNumber}.png"),
            ),
          ),
        );
      },
    );
  }
}
