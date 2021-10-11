import 'package:flutter/material.dart';
import 'package:smartagro/src/pages/loading_page.dart';

import 'package:smartagro/src/pages/usuarios_page.dart';
import 'package:smartagro/src/pages/chat_page.dart';
import 'package:smartagro/src/pages/login_page.dart';
import 'package:smartagro/src/pages/register_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': ( _ ) => UsuariosPage(),
  'chat'    : ( _ ) => ChatPage(),
  'login'   : ( _ ) => LoginPage(),
  'register': ( _ ) => RegisterPage(),
  'loading' : ( _ ) => LoadingPage(),
};