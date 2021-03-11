import 'package:mobx/mobx.dart';

// Include generated file
part 'first_controller.g.dart';

// This is the class used by rest of your codebase
class FirstController = FirstControllerBase with _$FirstController;

// The store-class
abstract class FirstControllerBase with Store {
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
