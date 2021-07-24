import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_firestore/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // check for errors
        if (snapshot.hasError) {
          print('Something is Wrong...');
        }
        // once completed show on application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'CRUD Firestore',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Colors.redAccent,
            ),
            home: HomePage(),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
