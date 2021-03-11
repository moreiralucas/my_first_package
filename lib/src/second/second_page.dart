import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'second_controller.dart';

class SecondPage extends StatefulWidget {
  static const routeName = "secondpage";
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends ModularState<SecondPage, SecondController> {
  @override
  void initState() {
    print('init state second page');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Second page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Observer(
              builder: (_) => Text("second page: ${controller.value}"),
            ),
          ),
          SizedBox(height: 50),
          IconButton(
            onPressed: controller.increment,
            icon: Icon(Icons.plus_one),
          ),
          IconButton(
            onPressed: controller.decrement,
            icon: Icon(Icons.minimize_outlined),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    print('Second page dispose');
    super.dispose();
  }
}
