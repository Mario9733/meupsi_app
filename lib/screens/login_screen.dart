import 'package:flutter/material.dart';
import 'package:meupsi_app/api_service.dart';
import 'package:meupsi_app/app_routes.dart'; // Substitua pelo caminho correto do arquivo com a função fazerLogin

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MeuPsi App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Faça login',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: senhaController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                final email = emailController.text.trim();
                final senha = senhaController.text.trim();

                if (await fazerLogin(email, senha)) {
                  // Login bem-sucedido, navegar para a próxima tela
                  Navigator.pushNamed(context, AppRoutes.home);
                } else {
                  // Exibir uma mensagem de erro
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Login falhou. Verifique suas credenciais.'),
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.cadastroUsuario);
              },
              child: Text('Cadastrar usuário'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.esqueciMinhaSenha);
              },
              child: Text('Esqueci minha senha'),
            ),
          ],
        ),
      ),
    );
  }
}
