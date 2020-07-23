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
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(colors: [
                  Colors.pink,
                  Colors.yellow,
                ]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                  )
                ]),
            child: Text("I am a box")),
      ),
    );
  }
}
