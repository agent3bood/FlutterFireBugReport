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
    apiKey: 'AIzaSyD-yi9Sck84_Q3vXiE3hzl1K6k3C5Sv3XY',
    appId: '1:507820853335:web:c4f4d73d9bbe8e5b18bb12',
    messagingSenderId: '507820853335',
    projectId: 'example-fe65a',
    authDomain: 'example-fe65a.firebaseapp.com',
    storageBucket: 'example-fe65a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvwCLFyUvYCja1JluZxaB_sAT6y1m2nOk',
    appId: '1:507820853335:android:30ee930259f83f1518bb12',
    messagingSenderId: '507820853335',
    projectId: 'example-fe65a',
    storageBucket: 'example-fe65a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4q37-6vvFeDNgSVgYpaDKzdmLDaVOrmk',
    appId: '1:507820853335:ios:239df34ce93d377518bb12',
    messagingSenderId: '507820853335',
    projectId: 'example-fe65a',
    storageBucket: 'example-fe65a.appspot.com',
    iosClientId: '507820853335-445rgnn28977uucpk43f9auf4vm1bgj7.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFireBug1',
  );
}
