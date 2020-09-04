import 'package:flutter/cupertino.dart';
import 'package:mvvm_provider/model/counterModel.dart';

class CounterViewModel extends ChangeNotifier {
  CounterModel mainCounter = new CounterModel(counter: 0);

  // int get counter {
  //   return _mainCounter.counter;
  // }

  increment() {
    mainCounter.counter++;
    notifyListeners();

    print(mainCounter.counter);
  }

  decrement() {
    mainCounter.counter--;
    notifyListeners();
  }
}
