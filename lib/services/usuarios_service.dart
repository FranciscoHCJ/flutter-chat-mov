import 'package:http/http.dart' as http;

import 'package:chatmov/models/usuario.dart';
import 'package:chatmov/models/usuarios_response.dart';

import 'package:chatmov/global/environment.dart';
import 'package:chatmov/services/auth_sercive.dart';

class UsuariosService {
  Future<List<Usuario>> getUsuarios() async {
    try {
      final resp = await http.get(
        '${Environment.apiUrl}/usuarios',
        headers: {
          'Content-Type': 'application/json',
          'x-token': await AuthService.getToken()
        },
      );

      final usuariosResponse = usuariosResponseFromJson(resp.body);

      return usuariosResponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
