import 'package:mobx/mobx.dart';

// Include generated file
part 'second_controller.g.dart';

// This is the class used by rest of your codebase
class SecondController = SecondControllerBase with _$SecondController;

// The store-class
abstract class SecondControllerBase with Store {
  @observable
  int _value = 0;

  @action
  void increment() {
    _value++;
  }

  @action
  void decrement() {
    if (_value > 0) {
      _value--;
    }
  }

  @computed
  int get value => _value;
}
