import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncrementWidget extends StatefulWidget {
  @override
  _IncrementWidgetState createState() => _IncrementWidgetState();
}

class _IncrementWidgetState extends State<IncrementWidget> {
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    print('Construido Widget');
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc'),
      ),
      body: Center(
        child: Text('Tocou o botão add $_counter vezes'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}
