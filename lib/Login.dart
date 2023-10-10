import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstprojectwithfirebase/Helper/custom_functions.dart';
import 'package:firstprojectwithfirebase/SignUp.dart';
import 'package:firstprojectwithfirebase/screens/UserScreen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});
  String? email;
  String? password;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 167, 254),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Login Screen",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "To Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: "Monoton"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your email";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      prefix: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(Icons.email),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onChanged: (value) {
                    password = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter your password";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      suffix: Icon(Icons.visibility),
                      prefix: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(Icons.lock),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    color: Colors.purple,
                    onPressed: () async {
                      try {
                        await signIn(email: email!, password: password!);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UserScreen()),
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have any account?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          "Register Now",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
