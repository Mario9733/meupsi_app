import 'package:flutter/material.dart';

class EsqueciMinhaSenhaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperação de Senha'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recuperação de Senha',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Adicionar lógica de recuperação de senha aqui
              },
              child: Text('Recuperar Senha'),
            ),
          ],
        ),
      ),
    );
  }
}
