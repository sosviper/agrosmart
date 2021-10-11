import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartagro/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Agro',
      initialRoute: 'login',
      routes: appRoutes,
    );
  }
}