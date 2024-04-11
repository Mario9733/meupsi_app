import 'package:flutter/material.dart';
import 'package:meupsi_app/app_routes.dart';
import 'package:meupsi_app/screens/login_screen.dart';
import 'package:meupsi_app/screens/cadastro_usuario_screen.dart';
import 'package:meupsi_app/screens/esqueci_minha_senha_screen.dart';
import 'package:meupsi_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeuPsi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.cadastroUsuario: (context) => CadastroUsuarioScreen(),
        AppRoutes.esqueciMinhaSenha: (context) => EsqueciMinhaSenhaScreen(),
        AppRoutes.home: (context) => HomeScreen(),
      },
    );
  }
}
