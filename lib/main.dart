import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(Todolist());
class Todolist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: WholePage(),
        ),
      ),
    );
  }
}

class WholePage extends StatefulWidget {
  const WholePage({Key? key}) : super(key: key);

  @override
  _WholePageState createState() => _WholePageState();
}

class _WholePageState extends State<WholePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Text("you did great"),
           TextButton(
             child: Text('Add'),
             style: TextButton.styleFrom(
             textStyle: const TextStyle(fontSize: 20),
             ),
             onPressed: () {
               print('add pressed');
               _dialogBuilder(context);
               },
           ),
        ],
    );
  }
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Basic dialog title'),
          content: const Text('A dialog is a type of modal window that\n'
              'appears in front of app content to\n'
              'provide critical information, or prompt\n'
              'for a decision to be made.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  }




