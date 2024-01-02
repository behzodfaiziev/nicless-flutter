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
    apiKey: 'AIzaSyCeBhhD_NI-1fUgczDflmQm0p4J4zAPzWs',
    appId: '1:976318618393:web:e7ce0a3cdd2c6db5e8c388',
    messagingSenderId: '976318618393',
    projectId: 'nicless-billionaire',
    authDomain: 'nicless-billionaire.firebaseapp.com',
    storageBucket: 'nicless-billionaire.appspot.com',
    measurementId: 'G-NG00PW2DJ9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARcR3p3gK-UPctyBFK878QGtmEnef7UeI',
    appId: '1:976318618393:android:89ec1505836db969e8c388',
    messagingSenderId: '976318618393',
    projectId: 'nicless-billionaire',
    storageBucket: 'nicless-billionaire.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2AqGVzXXRprPXahyjE7ouIA1fJdk0roE',
    appId: '1:976318618393:ios:05e29ce304523892e8c388',
    messagingSenderId: '976318618393',
    projectId: 'nicless-billionaire',
    storageBucket: 'nicless-billionaire.appspot.com',
    iosBundleId: 'com.behzodfaiziev.niclessFlutter',
  );
}