import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Aplicativo do Curso'),
      ),
      body: Center(
        child: Text(
            'Olá, meu nome é Anderson Azevedo\nAtualmente tenho $likes likes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            likes++;
          });
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}
