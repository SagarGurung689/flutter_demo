

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String myNum = "5";
  Color myColor = Colors.red;
  String myText = "Red";

  @override
  Widget build(BuildContext context) {
    print('I am called');
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home Screen')),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(49.0),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                color: myColor,
                child: Center(child: Text(myText)
                ,),
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  myColor = Colors.green;
                  myText = "green";
                });
              }, child: Text("Green")),
              ElevatedButton(onPressed: () {
                setState(() {
                  myColor = Colors.indigo;
                   myText = "indigo";
                });
              }, child: Text("Indigo")),
              ElevatedButton(onPressed: () {
                setState(() {
                  myColor = Colors.amber;
                   myText = "amber";
                });
              }, child: Text("Apple")),
            ],
          ),
        )
      ]),
    );
  }
}
