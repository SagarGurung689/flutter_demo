import 'package:flutter/material.dart';
import 'package:statefull/Home.dart';

class StateFull extends StatefulWidget {
  const StateFull({super.key});

  @override
  State<StateFull> createState() => _StateFullState();
}

class _StateFullState extends State<StateFull> {
  TextEditingController _controller = TextEditingController();
  String userInput = "";
  Color Mycolor = Colors.blue;
  String password = "";
  List sagar = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            height: double.maxFinite,
            width: 200,
            // color: Colors.green,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  height: 55,
                  width: double.maxFinite,
                  // color: Colors.red,
                  child: TextField(
                    controller:
                        _controller, // // Tell your textfield which controller it owns
                    onChanged: ((value) {
                      setState(() {
                        userInput = value;
                      });
                    }),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      password = userInput;
                    });
                  },
                  child: Text("show")),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            print('im tappend');
                            Mycolor = Colors.red;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            print('im tappend');
                            Mycolor = Colors.orange;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            // print('im tappend');
                            Mycolor = Colors.indigo;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            print('im tappend');
                            Mycolor = Colors.yellow;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ]),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  child: ElevatedButton(onPressed: (){}, child: Text('Hide')),
                ),
              )
            ]),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            width: double.maxFinite,
            color: Mycolor,
            child: Center(
                child: Text(
              password,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            )),
          ),
        ),
        Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeScree2();
                  },
                ));
              },
              child: Text('Back Home')),
        )
      ],
    ));
  }
}
