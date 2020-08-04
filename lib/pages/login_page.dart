import 'package:awesome_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
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
        body: Stack(
          children: <Widget>[
            Image.asset(
              "assets/codecode.jpg",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                    child: Form(
                  key: formKey,
                  // We want this to be a column, not in rows.
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            validator: (s) {},
                            controller: _usernameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "Enter email", labelText: "Username"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (s) {},
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Enter password",
                                labelText: "Password"),
                          ),
                          RaisedButton(
                            onPressed: () {
                              formKey.currentState.validate();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Text("Enter"),
                            color: Colors.orange,
                            textColor: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                )),
              ),
            ),
          ],
        ));
  }
}
