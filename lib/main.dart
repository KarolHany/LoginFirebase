import 'package:firebase_core/firebase_core.dart';
import 'package:firstprojectwithfirebase/SplashScreen.dart';
import 'package:firstprojectwithfirebase/Test_Screen.dart';
import 'package:firstprojectwithfirebase/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
