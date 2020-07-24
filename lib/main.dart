import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  //WidgetsApp
  // Run the Widgets on called
  // This just displays a purple navbar
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

/*
Overiding the first method, but inherting 
the previous Widget.
By class.
*/
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "My name is";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    /*
    Scaffold is from top to bottom
    Also, the app bar displays flutter is nice.
    appBar: AppBar(title: Text("Flutter is nice"))
    */
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[50],
      appBar: AppBar(
        title: Text("Flutter is nice"),
      ),
      // Now for the body
      /*
      Since we want to center it, we have to make the body 'center'
      and the the child below a container. So flipping, essentially.
      The clipbehaviour should be set to anti-alias, because
      we don't want it to go outside.
      We do want the rectangle to be circular, so adding
      borderRadius(10).
      */
      /*
      The purpose of the code below is to
      make a nice card containing our image,
      that we uploaded here.
      */
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/codecode.jpg",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Some text",
                          labelText: "Name"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      /*
      This particular icon is to edit.
      It is found in Icon(Icons.edit)
      You can choose from several options.
      */
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      drawer: Drawer(
        child: ListView(padding: const EdgeInsets.all(0), children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("DaCoder555"),
            accountEmail: Text("nintendo.spy123@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Hi, I am Abhishek"),
            subtitle: Text("Developer, working in Flutter"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("nintendo.spy123@gmail.com"),
            trailing: Icon(Icons.edit),
          )
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
