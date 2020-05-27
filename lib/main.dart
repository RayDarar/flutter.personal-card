import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

Container genContainer(int index) {
  return Container(
    color: Colors.white,
    height: 100,
    child: Center(
        child: Text(
      index.toString(),
      style: TextStyle(fontSize: 22),
    )),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/avatar.jpeg"),
              ),
              Text(
                "Ryspekov Ansar",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                  color: Colors.white,
                ),
              )
            ],
          ))),
    );
  }
}
