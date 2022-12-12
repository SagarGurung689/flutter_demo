import 'package:flutter/material.dart';

class learnState extends StatefulWidget {
  const learnState({super.key});

  @override
  State<learnState> createState() => _learnStateState();
}

class _learnStateState extends State<learnState> {
  double myHeight = 100.0;
  double myWidht = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: myHeight,
              width: myWidht,
              color: Colors.red),
              ElevatedButton(onPressed: (){
                setState(() {
                  myHeight = 90.0;
                  myWidht = 90.0;
                });
              }, child: Text('90,90')),
              ElevatedButton(onPressed: (){
                setState(() {
                  myHeight = 100.0;
                  myWidht = 100.0;
                });
              }, child: Text('100, 100')),
              ElevatedButton(onPressed: (){
                setState(() {
                  myHeight = 10.0;
                  myWidht = 10.0;
                });
              }, child: Text('10,10')),
          ],
        ),
        
      )
        
        
    );
  }
}