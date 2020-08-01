import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login page")),
      // Lets you scroll up and down your app
      body: SingleChildScrollView(
          child: Form(
        key: formKey,
        // We want this to be a column, not in rows.
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _usernameController,
            )
          ],
        ),
      )),
    );
  }
}
