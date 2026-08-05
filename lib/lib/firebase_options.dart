Enterimport 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError('Platform not supported');
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'YOUR-ANDROID-API-KEY',
    appId: '1:1234567890:android:abcdef123456',
    messagingSenderId: '1234567890',
    projectId: 'noor-app-islamic',
    storageBucket: 'noor-app-islamic.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'YOUR-IOS-API-KEY',
    appId: '1:1234567890:ios:abcdef123456',
    messagingSenderId: '1234567890',
    projectId: 'noor-app-islamic',
    storageBucket: 'noor-app-islamic.appspot.com',
    iosBundleId: 'com.example.noorApp',
  );
}
