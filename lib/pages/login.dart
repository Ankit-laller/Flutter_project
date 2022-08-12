import "package:flutter/material.dart";
import 'package:flutter_project/pages/homepage.dart';
import 'package:flutter_project/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final form_key = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (form_key.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Center(
            child: Form(
          key: form_key,
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 20)),
              Image.asset("assets/login.png", fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty";
                        } else if (value.length < 6) {
                          return "Password lenght can't be less than 6";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(18),
                      child: InkWell(
                        splashColor: Colors.orange,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changebutton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(Icons.done)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ), // fontWeight: FontWeight.bold,
                          // decoration: BoxDecoration(
                          //     color: Colors.purple,
                          //     // shape:
                          //     // changebutton ? BoxShape.circle : BoxShape.rectangle,
                          //     ),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //   // style: TextButton.styleFrom(),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeroute);
                    //   },
                    // ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
