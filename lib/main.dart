import 'package:flutter/material.dart';

void main() => runApp(Todolist());
class Todolist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  WholePage(),
        debugShowCheckedModeBanner: false,
    );
  }
}

class WholePage extends StatefulWidget {
  const WholePage({Key? key}) : super(key: key);

  @override
  _WholePageState createState() => _WholePageState();
}

class _WholePageState extends State<WholePage> {
  List<Widget> contentPage = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: contentPage,
        )
    ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            contentPage.add(
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter task to add',
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Text('Add'),
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        print(contentPage.indexOf(Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter task to add',
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                child: Text('Add'),
                                style: TextButton.styleFrom(
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                onPressed: () {
                                  print(contentPage[44444]);
                                },
                              ),
                            ),
                          ],
                        ),));
                      },
                    ),
                  ),
                ],
              ),
            );
          });
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}



