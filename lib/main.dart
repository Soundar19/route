import 'package:flutter/material.dart';
import 'package:rote/pages/Pages.dart';
import 'package:rote/routes/routespage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RouteManager.homepahe,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
