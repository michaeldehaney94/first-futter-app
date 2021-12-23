import 'package:firstapp/pages/home_page.dart';
import 'package:firstapp/utils/constant.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
static const String routeName = "/login";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
              "assets/cooking.jpg",
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
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            controller: usernameController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (s) {},
                            decoration: InputDecoration(
                              hintText: "Enter email address",
                              labelText: "Username",
                            ),
                          ),
                          SizedBox(
                              height: 20
                          ),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.text,
                            validator: (s) {},
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter password",
                              labelText: "Password",
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              Constant.prefs.setBool("loggedIn", true);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context)=> HomePage()));
                              Navigator.pushReplacementNamed(context, HomePage.routeName);
                            },
                            child: Text("Sign In"),
                            color: Colors.blue,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
