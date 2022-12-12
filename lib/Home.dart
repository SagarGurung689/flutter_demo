import 'package:flutter/material.dart';
import 'package:statefull/exercise4.dart';
import 'package:statefull/exericse3.dart';

class HomeScree2 extends StatefulWidget {
  const HomeScree2({super.key});

  @override
  State<HomeScree2> createState() => _HomeScree2State();
}

class _HomeScree2State extends State<HomeScree2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Column(children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.grey,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return StateFull();
                  }),
                ),
              );
            },
            child: Text("Exercise 4")),

             ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return changePassword();
                  }),
                ),
              );
            },
            child: Text("Exercise 3"))
      ]),
    );
  }
}
