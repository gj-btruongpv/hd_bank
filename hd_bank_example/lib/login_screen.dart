import 'package:flutter/material.dart';
import 'package:hd_bank_example/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routePath = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 24),
          const SizedBox(height: 24),
          Center(
            child: InkWell(
              onTap: () async {
                Navigator.pushReplacementNamed(context, HomeScreen.routePath);
              },
              child: Container(
                width: 200,
                height: 48,
                alignment: Alignment.center,
                color: Colors.blue,
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
