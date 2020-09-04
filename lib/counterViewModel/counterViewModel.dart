import 'package:flutter/cupertino.dart';
import 'package:mvvm_provider/model/counterModel.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel _mainCounter = new CounterModel();

  // int boy = _mainCounter.counter;

  int get counter {
    return _mainCounter.counter;
  }

  increment() {
    _mainCounter.counter++;
    notifyListeners();

    print(_mainCounter.counter);
  }

  decrement() {
    _mainCounter.counter--;
    notifyListeners();
  }
}
