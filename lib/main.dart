import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Business Card',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/avatar.png"),
              radius: 130,
              backgroundColor: Colors.white,
            ),
            ListTile(
              title: Center(
                  child: Text(
                "Ahmed Mahmoud Fouad",
                style: TextStyle(fontFamily: "Pacifico", fontSize: 24),
              )),
              subtitle: Center(
                  child: Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(color: Color(0xFF6C8090), fontSize: 16),
              )),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Card(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("(+02) 1234567890"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.mail),
                title: Text("AhmedFouad@gmail.com"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
