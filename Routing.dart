import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}
class Home  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Aboutus()));
                },
                child: Text("About us"),
               ),
               Text("click for result"),
                
              ],
            ),
          ),
        
      
    );
  }
}
class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("about us"),backgroundColor: Colors.red,),
      body: Text("This is about us screen",style: TextStyle(fontSize: 30,color: Colors.blue),),
    );
  }
}
