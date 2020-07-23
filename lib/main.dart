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
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    Scaffold is from top to bottom
    Also, the app bar displays flutter is nice.
    appBar: AppBar(title: Text("Flutter is nice"))
    */
    return Scaffold(
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
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.teal,
        ),
      ),
      /*
      This particular icon is to edit.
      It is found in Icon(Icons.edit)
      You can choose from several options.
      */
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      drawer: Drawer(
        child: ListView(children: <Widget>[
          DrawerHeader(child: Text("Hi, I am text!")),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
