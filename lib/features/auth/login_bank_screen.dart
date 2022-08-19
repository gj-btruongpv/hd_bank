import 'package:flutter/material.dart';
import 'package:hd_bank_sdk/features/payment/payment_bank_screen.dart';

class LoginBankScreen extends StatefulWidget {
  static const routePath = '/hd-bank/login';
  const LoginBankScreen({Key? key}) : super(key: key);

  static Widget registerRoute(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as String;
    return const LoginBankScreen();
  }

  @override
  State<LoginBankScreen> createState() => _LoginBankScreenState();
}

class _LoginBankScreenState extends State<LoginBankScreen> {
  TextEditingController ctEmail = TextEditingController();
  TextEditingController ctPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login HDBank'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            TextFormField(
              controller: ctEmail,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: ctPass,
              decoration: const InputDecoration(hintText: 'Pass'),
            ),
            const SizedBox(
              height: 32,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  String text = '${ctEmail.text}\n${ctPass.text}';
                  Navigator.pop(context, text);
                },
                child: Container(
                  width: 200,
                  height: 48,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PaymentBankScreen.routePath);
                },
                child: Container(
                  width: 200,
                  height: 48,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text(
                    'HD Bank',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    ctEmail.dispose();
    ctPass.dispose();
    super.dispose();
  }
}
