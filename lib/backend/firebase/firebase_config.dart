import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAcL-uYuIILE1avTvcmQgcvStyrFvU-t6g",
            authDomain: "clube7desbravadores.firebaseapp.com",
            projectId: "clube7desbravadores",
            storageBucket: "clube7desbravadores.appspot.com",
            messagingSenderId: "1028846139837",
            appId: "1:1028846139837:web:70512ffec374bb3675bad4",
            measurementId: "G-D2F6PT17TL"));
  } else {
    await Firebase.initializeApp();
  }
}
