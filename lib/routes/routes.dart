import 'package:flutter/material.dart';

import 'package:chatmov/pages/chat_page.dart';
import 'package:chatmov/pages/loading_page.dart';
import 'package:chatmov/pages/login_page.dart';
import 'package:chatmov/pages/register_page.dart';
import 'package:chatmov/pages/usuarios_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};
