import 'package:flutter/material.dart';
import 'package:mvvm_provider/counterViewModel/counterViewModel.dart';
import 'package:mvvm_provider/model/counterModel.dart';
import 'package:provider/provider.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  void initState() {
    super.initState();
    Provider.of<CounterViewModel>(context, listen: false);
  }


  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('The counter is ${vm.mainCounter.counter}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            vm.increment();
            // print(vm.counter);
          }),
    );
  }
}
