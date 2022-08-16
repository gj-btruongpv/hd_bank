import 'package:flutter/material.dart';
import 'package:hd_bank_sdk/hd_bank.dart';
import 'package:hd_bank_sdk/globals.dart' as globals;

class AppHdBankRouter {
  static GlobalKey<NavigatorState>? navigatorKey;
  static Map<String, WidgetBuilder> registerRoutesHdBank(
      {required GlobalKey<NavigatorState> key, required String baseUrl}) {
    navigatorKey = key;
    globals.baseUrl = baseUrl;
    debugPrint('HD Base URL ${globals.baseUrl}');
    return {
      LoginBankScreen.routePath: (context) => LoginBankScreen.registerRoute(context),
      PaymentBankScreen.routePath: (context) => const PaymentBankScreen(),
    };
  }
}
