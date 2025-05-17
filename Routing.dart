import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Home());
  }
}
class Home extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Home"),backgroundColor: Colors.purple,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            
              children: <Widget>[
                Text("first page",style: TextStyle(fontSize: 20,color: Colors.red),),
                SizedBox(height: 20,),
                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Aboutus()));
                }, 
                child: 
          
                  Text("Aboutus",style: TextStyle(fontSize: 20,color: Colors.green),),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed:(){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Help()));
                }, 
                child: 
              
                  Text("Help",style:TextStyle(fontSize: 20,color: const Color.fromARGB(255, 9, 176, 210)),),
                )
              ],
            ),
          ),
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
      appBar: AppBar(title: Text("aboutus"),),
      body: Text("this is about us screen"),
    );
  }
}
class Help extends StatelessWidget {
  const Help ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("help"),),
      body: Text("this is help screen"),
    );
  }
}
