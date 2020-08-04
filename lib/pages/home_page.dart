import 'package:flutter/material.dart';

import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  var url = "http://jsonplaceholder.typicode.com/photos";
  var data;
  // var myText = "My name is";
  // TextEditingController _nameController = TextEditingController();
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    // Getting the url for usage(JSON File)
    var res = await http.get(url);
    // Convert it to string, so string.parse
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
  }

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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      // Now for the body
      /*
      The purpose of the code below is to
      make a nice card containing our image,
      that we uploaded here.
      */
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  // getting the data at index,
                  // where and printing the id there as well
                  /*
                  So essentially, we are printing the data at
                  index a, and also the id of that index
                  a.
                  */
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  // Adding image for each thing. So printing the image url inside of a given index a, which is in data.
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),

      /*
      This particular icon is to edit.
      It is found in Icon(Icons.edit)
      You can choose from several options.
      */
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
