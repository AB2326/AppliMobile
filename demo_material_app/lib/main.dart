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
        home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}