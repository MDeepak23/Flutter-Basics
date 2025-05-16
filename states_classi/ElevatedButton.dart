import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {

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
               Text("hello",style: TextStyle(fontSize: 40,color: Colors.amber),),
               ElevatedButton(
                
            
                
                onPressed: () {
                  print("worked");
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
