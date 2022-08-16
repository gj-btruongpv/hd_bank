
import 'package:flutter/material.dart';
import 'package:hd_bank_example/home_screen.dart';
import 'package:hd_bank_example/login_screen.dart';
import 'package:hd_bank_sdk/hd_bank.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Map<String, WidgetBuilder> registerRoutes() {
    return {
      LoginScreen.routePath: (context) => const LoginScreen(),
      HomeScreen.routePath: (context) => const HomeScreen(),
      ...AppHdBankRouter.registerRoutesHdBank()
    };
  }
}
