import 'package:flutter/material.dart';
import 'package:frontend/presentation/auth/forgotPassword/forgot_password.dart';
import 'package:frontend/presentation/auth/login/login.dart';
import 'package:frontend/presentation/auth/register/register.dart';
import 'package:frontend/presentation/resources/strings_manage.dart';

class RoutesManager {
  static const String login = AppStrings.loginRoute;
  static const String register = AppStrings.registerRoute;
  static const String forgotPassword = AppStrings.forgotPasswordRoute;
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesManager.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RoutesManager.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case RoutesManager.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text(AppStrings.noRouteFound)),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
