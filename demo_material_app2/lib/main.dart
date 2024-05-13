import 'package:flutter/material.dart';
void main() {
  runApp(const PractiseApp());
}
class PractiseApp extends StatelessWidget {
  const PractiseApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'First App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ma première AppBar"),
        ),
        body: Container(
          height: 300,
          width: 300,
          color: Colors.lightBlueAccent,
          child: const Text(
              "Petit texte",
              style: TextStyle(color: Colors.white, fontSize: 45, fontWeight:
              FontWeight.bold)
          ),
        )
    );
  }
}