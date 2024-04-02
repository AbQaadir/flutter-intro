import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar!'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // print('Add button pressed');

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Add button pressed'),
                ),
              );
            },
          ),
        ],
      ),
      body: const SafeArea(
        child: Center(child: Text('Hello, Flutter!')),
      ),
    );
  }
}
