import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          'Bem-vindo à tela principal!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
