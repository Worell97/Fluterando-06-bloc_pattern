import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:bloc_pattern_test/widgets/increment/increment-controller.dart';
import 'package:bloc_pattern_test/widgets/increment/increment-widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc(
          (i) => IncrementController(),
        ),
      ],
      child: MaterialApp(
        home: IncrementWidget(),
      ),
    );
  }
}
