import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstprojectwithfirebase/Helper/custom_functions.dart';
import 'package:firstprojectwithfirebase/Login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  String? email;
  String? password;
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Sign Up Screen",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Text(
                    "For Your Account",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 45,
                        fontFamily: "Monoton"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Faild is Required";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "UserName",
                      prefix: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(Icons.person),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Faild is Required";
                    }
                  },
                  onChanged: (value) {
                    email = value;
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Faild is Required";
                    }
                  },
                  onChanged: (value) {
                    password = value;
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
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Faild is Required";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      suffix: Icon(Icons.visibility),
                      prefix: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(Icons.person),
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
                      if (formkey.currentState!.validate()) {
                        try {
                          await createaccount(
                              email: email!, password: password!);
                          NavigateWidget(context, Login());
                          SnackShow(context, "Successfuly");
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            SnackShow(
                                context, "The password provided is too weak.");
                          } else if (e.code == 'email-already-in-use') {
                            SnackShow(context,
                                "The account already exists for that email.");
                          }
                        } catch (e) {
                          print(e);
                        }
                      }
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account ?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.purple),
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
