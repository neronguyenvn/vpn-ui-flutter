// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/activation_code/activation_code_view.dart';
import '../ui/views/forgot_password/forgot_password_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/reset_password/reset_password_view.dart';

class Routes {
  static const String loginViewRoute = '/';
  static const String forgotPasswordRoute = '/forgot-password-view';
  static const String activationCodeRoute = '/activation-code-view';
  static const String resetPasswordRoute = '/reset-password-view';
  static const all = <String>{
    loginViewRoute,
    forgotPasswordRoute,
    activationCodeRoute,
    resetPasswordRoute,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginViewRoute, page: LoginView),
    RouteDef(Routes.forgotPasswordRoute, page: ForgotPasswordView),
    RouteDef(Routes.activationCodeRoute, page: ActivationCodeView),
    RouteDef(Routes.resetPasswordRoute, page: ResetPasswordView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
    ForgotPasswordView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ForgotPasswordView(),
        settings: data,
      );
    },
    ActivationCodeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ActivationCodeView(),
        settings: data,
      );
    },
    ResetPasswordView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ResetPasswordView(),
        settings: data,
      );
    },
  };
}
