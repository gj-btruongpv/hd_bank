import 'package:flutter/material.dart';
import 'package:hd_bank_sdk/hd_bank.dart';

class AppHdBankRouter {
  static Map<String, WidgetBuilder> registerRoutesHdBank() {
    return {
      LoginBankScreen.routePath: (context) => LoginBankScreen.registerRoute(context),
      PaymentBankScreen.routePath: (context) => const PaymentBankScreen(),
    };
  }
}
