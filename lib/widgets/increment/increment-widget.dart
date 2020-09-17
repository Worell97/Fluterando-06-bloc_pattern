import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:bloc_pattern_test/widgets/increment/increment-controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncrementWidget extends StatefulWidget {
  @override
  _IncrementWidgetState createState() => _IncrementWidgetState();
}

class _IncrementWidgetState extends State<IncrementWidget> {
  @override
  Widget build(BuildContext context) {
    print('Construind widget');
    final IncrementController bloc =
        BlocProvider.getBloc<IncrementController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: bloc.increment,
          ),
        ],
      ),
      body: Center(
        child: StreamBuilder(
          stream: bloc.outCounter,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Text('Tocou no botão ${snapshot.data} vezes');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: bloc.increment,
      ),
    );
  }
}
