import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
              child: AppLayout(),
            )));
  }
}

class AppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        InfoCard("87086144672", Icons.phone),
        InfoCard("dfqgth400@gmail.com", Icons.email),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  const InfoCard(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
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
}
