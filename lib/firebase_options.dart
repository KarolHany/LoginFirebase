// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAGg7Zls545QSTwQVmeXCTqoxU5PB-73JQ',
    appId: '1:219497845924:web:b0dcdbcebf7242d9404231',
    messagingSenderId: '219497845924',
    projectId: 'loginapp-81fb0',
    authDomain: 'loginapp-81fb0.firebaseapp.com',
    storageBucket: 'loginapp-81fb0.appspot.com',
    measurementId: 'G-1ZXD176J44',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBy_nu3NH6oJc5IAJ7ayFvheB6dp5JKeHg',
    appId: '1:219497845924:android:ec3b207781ba8bff404231',
    messagingSenderId: '219497845924',
    projectId: 'loginapp-81fb0',
    storageBucket: 'loginapp-81fb0.appspot.com',
  );
}
