import 'package:flutter/material.dart';
import 'package:hd_bank_sdk/hd_bank.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Map<String, WidgetBuilder> registerRoutes() {
    return {
      LoginBankScreen.routePath: (context) => LoginBankScreen.registerRoute(context),
      PaymentBankScreen.routePath: (context) => const PaymentBankScreen(),
    };
  }
}
