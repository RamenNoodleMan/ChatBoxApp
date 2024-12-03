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
    apiKey: 'AIzaSyCPv9w27hNWEqRMdv1MQuqeEdQE6l5OgGk',
    appId: '1:724818934483:web:da65fb268d457babde3226',
    messagingSenderId: '724818934483',
    projectId: 'chatapp-2ea6a',
    authDomain: 'chatapp-2ea6a.firebaseapp.com',
    storageBucket: 'chatapp-2ea6a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqFsqYIHZKmxrBbdgR_x2lvAYKsZs9ulg',
    appId: '1:724818934483:android:65b1e0bba189ece4de3226',
    messagingSenderId: '724818934483',
    projectId: 'chatapp-2ea6a',
    storageBucket: 'chatapp-2ea6a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGR3U9hZqIdlsHxOw0LgATWwWGmxHgdzw',
    appId: '1:724818934483:ios:12933e4620388342de3226',
    messagingSenderId: '724818934483',
    projectId: 'chatapp-2ea6a',
    storageBucket: 'chatapp-2ea6a.appspot.com',
    iosBundleId: 'com.example.chatterbox',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBGR3U9hZqIdlsHxOw0LgATWwWGmxHgdzw',
    appId: '1:724818934483:ios:bf0df89f59dc9d00de3226',
    messagingSenderId: '724818934483',
    projectId: 'chatapp-2ea6a',
    storageBucket: 'chatapp-2ea6a.appspot.com',
    iosBundleId: 'com.example.chatterbox.RunnerTests',
  );
}