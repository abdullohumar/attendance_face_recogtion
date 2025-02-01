import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDhSYIZWpYeYWignx-Kvw_VwUcrgrisueE', //current_key
      appId: "1:146300987438:android:eca5d2e553fd2bec86d7bf", //mobilesdk_app_id 
      messagingSenderId: '146300987438',//project_number 
      projectId: 'attendance-app-2c6c2' //project_id
      )      
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardTheme: CardTheme(
          surfaceTintColor: Colors.white,
        ),
        dialogTheme: DialogTheme(
          surfaceTintColor: Colors.white, backgroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent
        ),
        useMaterial3: true
      ),
      home: const Placeholder(),
    );
  }
}