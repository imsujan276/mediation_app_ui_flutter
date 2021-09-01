import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcomespleep_controller.dart';

class WelcomespleepView extends GetView<WelcomespleepController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WelcomespleepView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WelcomespleepView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
