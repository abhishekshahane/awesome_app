import 'package:flutter/material.dart';

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
            child:
                NameCardWidget(myText: myText, nameController: _nameController),
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
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
