import 'package:flutter/material.dart';
import 'package:hd_bank_sdk/hd_bank.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Map<String, WidgetBuilder> registerRoutes() {
    return {
      LoginScreen.routePath: (context) => LoginScreen.registerRoute(context),
      PaymentScreen.routePath: (context) => const PaymentScreen(),
    };
  }
}
