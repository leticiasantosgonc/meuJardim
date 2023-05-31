import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC7VekJPY-RNuv0DLOfaeqVYX0VlKDutTI",
            authDomain: "meujardim.firebaseapp.com",
            projectId: "meujardim",
            storageBucket: "meujardim.appspot.com",
            messagingSenderId: "785480628832",
            appId: "1:785480628832:web:6f1bfb17fc0a8cc1272105",
            measurementId: "G-R48THNKP59"));
  } else {
    await Firebase.initializeApp();
  }
}
