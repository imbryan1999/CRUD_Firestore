import 'package:flutter/material.dart';

import 'AddUsersPage.dart';
import 'ListUsersPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('CRUD Firestore'),
            new IconButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddUsersPage())),
                icon: Icon(
                  Icons.add,
                  color: Colors.limeAccent,
                  size: 35,
                ))
          ],
        ),
      ),
      body: ListUsersPage(),
    );
  }
}
