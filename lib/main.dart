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
  Card genCard(String text, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontFamily: "Source-Sans Pro",
            color: Colors.teal[900],
          ),
        ),
        leading: Icon(icon, color: Colors.teal),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/avatar.jpeg"),
              ),
              Text(
                "Ryspekov Ansar",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Pacifico",
                  color: Colors.white,
                ),
              ),
              Text(
                "Fullstack JS developer".toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Source-Sans Pro",
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              genCard("87086144672", Icons.phone),
              genCard("dfqgth400@gmail.com", Icons.email),
            ],
          ))),
    );
  }
}
