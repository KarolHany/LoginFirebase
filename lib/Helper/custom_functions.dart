import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void SnackShow(BuildContext context, String massege) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(massege)));
}

void NavigateWidget(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

Future<void> createaccount(
    {required String email, required String password}) async {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
}

Future<void> signIn({required String email, required String password}) async {
  final credential = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password);
}
