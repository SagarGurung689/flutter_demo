
import 'package:flutter/material.dart';
import 'package:statefull/Home.dart';

class changePassword extends StatefulWidget {
  const changePassword({super.key});

  @override
  State<changePassword> createState() => _changePasswordState();
}

class _changePasswordState extends State<changePassword> {
    double myHeight = 100;
    String myText = 'hide';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show and Hide')
      ),
      body: Column(children: [
        Container(
          height: myHeight,
          color: Colors.red,
          child: Text(myText),
          
        ),
        ElevatedButton(onPressed: (){
     
         if (myHeight == 100){
          setState(() {
            myHeight = 0;
            myText = 'show';
          });
         }
        else{
          setState(() {
            myHeight = 100;
            myText = 'hide';
          });
        }


           
        }, child: Text(myText)),

         Container(
          child: ElevatedButton(onPressed: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context) {
              return HomeScree2();
            },));
          }, child: Text('Back Home')),
        )
      ],
      
      )
      
      
    );
  }
}