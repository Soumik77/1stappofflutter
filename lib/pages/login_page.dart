import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/undraw_Mobile_login_re_9ntv.png",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Welcome $name",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter username",
                                labelText: "Username"),
                            validator: (String? value) {
                              if (value != null && value.length < 5) {
                                return "Username's length must be 5";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Enter password",
                                labelText: "Password"),
                            validator: (String? value) {
                              if (value != null && value.length < 6) {
                                return "Password's length atleast 6";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 40.0,
                          ),

                          Material(
                            color: Colors.indigo,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                            child: InkWell(
                              onTap: () => moveToHome(context),
                              child: AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  height: 45,
                                  width: changeButton ? 50 : 150,
                                  alignment: Alignment.center,
                                  child: changeButton
                                      ? Icon(Icons.done, color: Colors.white)
                                      : Text(
                                          "Login",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        )),
                            ),
                          )
                          //ElevatedButton(
                          //child: Text("Login"),
                          //style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                          //onPressed: () {
                          // Navigator.pushNamed(context, MyRoutes.homeRoute);
                          //},
                          //)
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
