
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(home:Scaffold(
      appBar : AppBar(title:Text("MYAPP",style: TextStyle(backgroundColor: Colors.green,color: const Color.fromARGB(255, 225, 12, 211)),)),
      body: Center(child:Image(image:NetworkImage('https://tse3.mm.bing.net/th?id=OIP.GELKQ4d2ogvLPHMtaI4UygHaHa&pid=Api&P=0&h=180'))
      
      )
  
    ));
  }
}
