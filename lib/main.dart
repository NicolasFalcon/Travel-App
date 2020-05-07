import 'package:flutter/material.dart';
import 'package:travel_app/src/bloc/provider.dart';
import 'package:travel_app/src/pages/account_page.dart';
import 'package:travel_app/src/pages/cargar_foto_page.dart';
import 'package:travel_app/src/pages/home_page.dart';
import 'package:travel_app/src/pages/login_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travell app',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'setting': (BuildContext context) => AccountPage(),
        'foto': (BuildContext context) => CargarFotoPage(),
      },
    )
    );
  }
}
