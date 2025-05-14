import 'package:flutter/material.dart';

 void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar:AppBar(title:Text("MY APP")),
      body : Center(child:Image(image:NetworkImage('https://tse1.mm.bing.net/th?id=OIP.TDeLfcH25kxQDZfMovfcrQHaEo&pid=Api&P=0&h=180'))
    )
  
  )));
 }

