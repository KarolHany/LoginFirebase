import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Test"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: "karolhany09@gmail.com",
                    password: "2552075647kk@11",
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("The password provided is too weak.")));
                  } else if (e.code == 'email-already-in-use') {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "The account already exists for that email.")));
                  }
                } catch (e) {
                  print(e);
                }
              },
              child: Text("Create Account"))),
    );
  }
}
