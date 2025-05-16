import 'package:flutter/material.dart';
//using stateful widget for elevated button to change data by click
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  _myapp1 createState(){
    return _myapp1();
  }
}
class _myapp1  extends State<MyApp> {
  var name = "Hello";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("first app"),backgroundColor: Colors.purple,) ,
        body: Center(
      
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               Text(name,style: TextStyle(fontSize: 40,color: Colors.amber),),
               ElevatedButton(
                
            
                
                onPressed: () {
                  print("worked");
                  setState(() {
                    name = "Bye";
                  });
                },
                child: Text("click me"),
               ),
               Text("click for result"),
                
              ],
            ),
          ),
        ),
      
    );
  }
}
