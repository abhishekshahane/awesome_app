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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          color: Colors.red,
          width: 100,
          height: 100,
          alignment: Alignment.center,
          child: Text("I am a box"),
        ),
      ),
    );
  }
}
