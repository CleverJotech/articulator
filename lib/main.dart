import 'web_body.dart';
import 'home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HackApp());
}

class HackApp extends StatelessWidget {
  const HackApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData(fontFamily: 'PoltawaskiNowy');
    return MaterialApp(
      title: 'Clever Articulator',
      initialRoute: '/',
      routes: {
        '/Research': (context) => const Research(),
        '/Company': (context) => const Company(),
      },
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CleverApp(),
    );
  }
}
