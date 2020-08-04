import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        child: Card(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Enter email", labelText: "Username"),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Enter"),
                    color: Colors.orange,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
