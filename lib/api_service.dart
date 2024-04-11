import 'package:http/http.dart' as http;
import 'dart:convert';

Future<bool> fazerLogin(String email, String senha) async {
  final url = 'http://localhost:3000/login'; // Substitua pela URL correta
  final response = await http.post(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'senha': senha,
    }),
  );

  if (response.statusCode == 200) {
    // Login bem-sucedido
    return true;
  } else {
    // Login falhou
    return false;
  }
}
