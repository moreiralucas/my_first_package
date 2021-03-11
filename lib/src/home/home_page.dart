import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../first/first_page.dart';
import '../second/second_page.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page of Package'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed(FirstPage.routeName);
              },
              child: Text('Go to First Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed(SecondPage.routeName);
              },
              child: Text('Go to Second Page'),
            ),
            Observer(
              builder: (_) => Text('The value is: ${controller.value}'),
            ),
            MaterialButton(
              onPressed: controller.increment,
              color: Colors.blue,
              child: Text(
                'Increment',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: controller.decrement,
              color: Colors.red,
              child: Text(
                'Decrement',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
