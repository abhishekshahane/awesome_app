import 'package:awesome_app/drawer.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'name_card_widget.dart';
import 'pages/home_page.dart';

void main() {
  //WidgetsApp
  // Run the Widgets on called
  // This just displays a purple navbar
  runApp(MyApp())
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}
