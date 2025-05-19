//Card || TextField || ScrollView
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  _myapp1 createState(){
      return _myapp1();
  }
}
class _myapp1 extends State<MyApp>{
  
  var name = "Change my name";
  TextEditingController _nameController = TextEditingController();
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: <Widget>[
                    Image.network("https://wallpapercave.com/wp/wp9764093.jpg"),
                    SizedBox(height: 20,),
                    Text(name),
                    Padding(padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: "Enter name",
                        labelText: "Name",
                        border: OutlineInputBorder()
                      ),
                      
                      ),
                      
                    ),
                    
                    
                     
                    ],
                  ),
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
              
            onPressed: (){
              setState(() {
                print(_nameController.text);
                name =  _nameController.text;
              });
              
            },
            child: Icon(Icons.send),
          ),
        ),
        
         
      
    );
  }
}
