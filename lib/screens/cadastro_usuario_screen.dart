import 'package:flutter/material.dart';

class CadastroUsuarioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuário'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cadastro de Usuário',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 10.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Adicionar lógica de cadastro de usuário aqui
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
