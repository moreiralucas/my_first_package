import 'package:mobx/mobx.dart';

// Include generated file
part 'store.g.dart';

// This is the class used by rest of your codebase
class MyStore = MyStoreBase with _$MyStore;

// The store-class
abstract class MyStoreBase with Store {
  MyStoreBase() {
    this._createdAt = DateTime.now().toString();
  }

  @observable
  String _createdAt = '';

  @observable
  int _log = 0;

  @computed
  String get createdAt => _createdAt;

  @action
  void log() {
    print('Log print: $_log');
    _log++;
  }
}
