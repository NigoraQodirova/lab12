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
    apiKey: 'AIzaSyBAAybQjoPr-Uj-pu66E-6x90UwEuMMT_A',
    appId: '1:517511187823:web:3be17086aa60b817322c9a',
    messagingSenderId: '517511187823',
    projectId: 'lab12-f1bf8',
    authDomain: 'lab12-f1bf8.firebaseapp.com',
    storageBucket: 'lab12-f1bf8.appspot.com',
    measurementId: 'G-WQRP98YS27',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfaUaWXbTyepm0IENB-aT5LXwhi3AvjtQ',
    appId: '1:517511187823:android:331f28cb8c74deda322c9a',
    messagingSenderId: '517511187823',
    projectId: 'lab12-f1bf8',
    storageBucket: 'lab12-f1bf8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAJxxTftCT4CrMGWouLWsFOKtIyiTGuio',
    appId: '1:517511187823:ios:e85ec5f4413ffc1f322c9a',
    messagingSenderId: '517511187823',
    projectId: 'lab12-f1bf8',
    storageBucket: 'lab12-f1bf8.appspot.com',
    iosBundleId: 'com.example.first',
  );
}
