import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'first_controller.dart';

class FirstPage extends StatefulWidget {
  static const routeName = "firstpage";
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends ModularState<FirstPage, FirstController> {
  @override
  void initState() {
    print('init state first page');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Observer(
              builder: (_) => Text("first page: ${controller.value}"),
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
    print('First page dispose');
    super.dispose();
  }
}
