import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("my first app"),),
        drawer: Drawer(
          child: ListView(
            children: <Widget> [
              UserAccountsDrawerHeader(
                accountName: Text("Deepak"),
                accountEmail: Text("venkatadeepak8@gmail.com"),
                 currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/152033387?v=4?s=400")

               
                ),),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Deepak"),
                  subtitle: Text("flutter developer"),
                  trailing: Icon(Icons.edit),
                  onTap: (){

                  },
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  subtitle: Text("venkatadeepak8@gmail.com"),
                  trailing: Icon(Icons.edit),
                  onTap: (){
                    
                  },
                ),
              

            ]
          ),
        ),
        
        ),
        
         
      
    );
  }
}
