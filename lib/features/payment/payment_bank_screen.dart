import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentBankScreen extends StatelessWidget {
  static const routePath = '/hd-bank-payment';
  const PaymentBankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://hdbank.com.vn/',
        ),
      ),
    );
  }
}
