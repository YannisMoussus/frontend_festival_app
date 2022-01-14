import 'package:app_festival/routes/route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// ======================== TO DO ========================
// Start Page :
// Login Page : UX DONE / HTTP REQUEST
// Register Page : UX DONE / HTTP REQUEST
// Presentation Page : UX DONE / HTTP REQUEST
// Create a Festival : UX DONE / HTTP REQUEST
// Modify a Festival :
// Resume festival :
// Map festival :
// Ticket buy :
// Profil page : UX DONE

// =======================================================

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyA3qCpUSUBmGY-YpJ9zN-sKP7XIyNmFGKg",
          appId: "1:83499234602:android:49297f2aee388cfd5a5a53",
          messagingSenderId: "83499234602",
          projectId: "festival-ca840"));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Festival App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF956FFF),
          accentColor: Color(0xFFE57CF2),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Color(0xFF1B1927),
          fontFamily: "SanFrancisco"),
      home: RoutePage(),
    );
  }
}
