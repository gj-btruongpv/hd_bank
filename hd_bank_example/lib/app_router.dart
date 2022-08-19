import 'package:flutter/material.dart';
import 'package:hd_bank_example/home_screen.dart';
import 'package:hd_bank_example/login_screen.dart';
import 'package:hd_bank_sdk/features/auth/login_bank_screen.dart';
import 'package:hd_bank_sdk/features/payment/payment_bank_screen.dart';
import 'package:hd_bank_sdk/hd_bank_router.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static Map<String, WidgetBuilder> registerRoutes() {
    return {
      LoginScreen.routePath: (context) => const LoginScreen(),
      HomeScreen.routePath: (context) => const HomeScreen(),
      ...AppHdBankRouter.registerRoutesHdBank(key: navigatorKey, baseUrl: '')
    };
  }
}
