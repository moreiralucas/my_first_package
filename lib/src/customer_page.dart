import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';

class CustomerPage extends StatefulWidget {
  final MainModule module = CustomAppModule();
  static const routeName = "/customer";

  // If you need create a constructor, move the CustomAppModule to inside him
  // const CustomerPage({Key key, this.module = CustomAppModule()}) : super(key: key);

  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  void initState() {
    super.initState();
    Modular.init(widget.module);
    Modular.debugMode = true;
  }

  @override
  Widget build(BuildContext context) {
    return widget.module.bootstrap;
  }

  @override
  void dispose() {
    widget.module.cleanInjects();
    if (Modular.debugMode) {
      debugPrint("-- ${widget.module.runtimeType.toString()} DISPOSED");
    }
    super.dispose();
  }
}
