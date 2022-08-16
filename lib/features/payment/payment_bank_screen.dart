import 'package:flutter/material.dart';

class PaymentBankScreen extends StatelessWidget {
  static const routePath = '/hd-bank-payment';
  const PaymentBankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: const SizedBox(),
    );
  }
}
