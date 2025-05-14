import 'package:flutter/material.dart';

 void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar:AppBar(title:Text("MY APP")),
      body : Center(child:Image(image:AssetImage('Assets/image/a.jpg')))
    )
  
  ));
 }

