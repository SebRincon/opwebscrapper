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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyCKyJJtN087tMyYToAJA3PLPzHd-UYO_IY',
    appId: '1:854034880822:web:d2ac904fcbaced68863b97',
    messagingSenderId: '854034880822',
    projectId: 'opwebscrapper-a37be',
    authDomain: 'opwebscrapper-a37be.firebaseapp.com',
    storageBucket: 'opwebscrapper-a37be.appspot.com',
    measurementId: 'G-GQ8DWEGQ5T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3_VkzzUqf4UWL57jXUZi9nOkIJUzlVWI',
    appId: '1:854034880822:android:1d332c38351c941d863b97',
    messagingSenderId: '854034880822',
    projectId: 'opwebscrapper-a37be',
    storageBucket: 'opwebscrapper-a37be.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4M_Ay65NinYKA9evH1RcFJIvri-igI-w',
    appId: '1:854034880822:ios:34fb61020fcdc988863b97',
    messagingSenderId: '854034880822',
    projectId: 'opwebscrapper-a37be',
    storageBucket: 'opwebscrapper-a37be.appspot.com',
    iosBundleId: 'com.example.opwebscrapper',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4M_Ay65NinYKA9evH1RcFJIvri-igI-w',
    appId: '1:854034880822:ios:d65be96e2a1bc49e863b97',
    messagingSenderId: '854034880822',
    projectId: 'opwebscrapper-a37be',
    storageBucket: 'opwebscrapper-a37be.appspot.com',
    iosBundleId: 'com.example.opwebscrapper.RunnerTests',
  );
}
