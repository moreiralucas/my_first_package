import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'first/first_controller.dart';
import 'home/home_controller.dart';
import 'my_app.dart';
import 'second/second_controller.dart';

class CustomAppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => FirstController()),
        Bind((i) => SecondController()),
      ];

  @override
  Widget get bootstrap => MyCustomApp();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => MyCustomApp()),
      ];
}
