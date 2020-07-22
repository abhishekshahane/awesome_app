import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  //WidgetsApp
  // Run the Widgets on called

  runApp(MaterialApp(
    home: HomePage(),
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
    );
  }
}
