// File generated for Firebase setup.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyAJ4ZAc5qeVxdIyQWwIuSOhDmh_hcUz7uQ',
    appId: '1:172632335876:android:11c918f36fa74d62bab751',
    messagingSenderId: '172632335876',
    projectId: 'schoolmotivationabdullahapp',
    authDomain: 'schoolmotivationabdullahapp.firebaseapp.com',
    storageBucket: 'schoolmotivationabdullahapp.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJ4ZAc5qeVxdIyQWwIuSOhDmh_hcUz7uQ',
    appId: '1:172632335876:android:11c918f36fa74d62bab751',
    messagingSenderId: '172632335876',
    projectId: 'schoolmotivationabdullahapp',
    storageBucket: 'schoolmotivationabdullahapp.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJ4ZAc5qeVxdIyQWwIuSOhDmh_hcUz7uQ',
    appId: '1:172632335876:android:11c918f36fa74d62bab751',
    messagingSenderId: '172632335876',
    projectId: 'schoolmotivationabdullahapp',
    storageBucket: 'schoolmotivationabdullahapp.firebasestorage.app',
    iosBundleId: 'com.xyz.school_motivation_abdullah_app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJ4ZAc5qeVxdIyQWwIuSOhDmh_hcUz7uQ',
    appId: '1:172632335876:android:11c918f36fa74d62bab751',
    messagingSenderId: '172632335876',
    projectId: 'schoolmotivationabdullahapp',
    storageBucket: 'schoolmotivationabdullahapp.firebasestorage.app',
    iosBundleId: 'com.xyz.school_motivation_abdullah_app',
  );
}
