import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home: A()));
}
class A extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar:AppBar(backgroundColor: Colors.purple,
                    title:Text("Stateless Vs Stateful"),
                    centerTitle:true,
                   
                   ),
      
      body:Column(
       children : [
         B(),
         C(),
         
       ],
      ),
    );
  }
}
class B extends StatelessWidget{
  dynamic count = 0;
  Widget build(BuildContext context){
    return Center(child:Container(
      margin: EdgeInsets.only(top:20),
      width:400,
      height:110,
      color: Colors.grey,
      child:Column(
        
      children : [
        SizedBox(height:10),
        Text("Stateless Widget(no data changes)"),
        SizedBox(height:10),
        Text("count : ${count}"),
        SizedBox(height:10),
        ElevatedButton(
        onPressed:(){},
          child: Text("click me"),
        ),
        
        
        
        
      ],
    ),
   ), );
  }
}
class C extends StatefulWidget{
  _D createState(){
    return _D();
  }
}
class _D extends State<C>{
   dynamic count = 0;
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.all(40),child:Container(
       margin: EdgeInsets.only(top:20),
      width:400,
      height:110,
      color: Colors.grey,
      
      child:Column(
      children : [
        SizedBox(height:10),
        Text("Stateful Widget(data changes)"),
        SizedBox(height:10),
        Text("count : ${count}"),
        SizedBox(height:10),
        ElevatedButton(
        onPressed:(){
          setState((){
            count++;
          });
        },
          child: Text("click me"),
        ),
        
        
        
        
      ],
    ),
   ), );
  }
  
}
