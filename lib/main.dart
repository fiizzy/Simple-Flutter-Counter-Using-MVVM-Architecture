import 'package:flutter/material.dart';
import 'package:mvvm_provider/counterViewModel/counterViewModel.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

void main() => runApp(new MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => CounterViewModel(),
        child: Counter(),
      ),
      title: 'Counter App',
    ));
