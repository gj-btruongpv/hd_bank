import 'package:flutter/material.dart';
import 'package:hd_bank_example/app_router.dart';
import 'package:hd_bank_example/home_screen.dart';
import 'package:hd_bank_example/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: AppRouter.registerRoutes(),
      initialRoute: LoginScreen.routePath,
    );
  }
}


