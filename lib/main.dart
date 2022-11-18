import 'package:flutter/material.dart';
import 'package:projectstock/pages/login.dart';
import 'package:projectstock/pages/register.dart';
import 'package:projectstock/widgets/theme.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: "/home",
      // routes: {
      //   "/home": (context) => HomePage(),
      // },
      home: MyLogin(),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
        'home': (context) => HomePage(),
      },
    );
  }
}
