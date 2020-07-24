import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
