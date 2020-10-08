import 'package:auto_route/auto_route_annotations.dart';
import 'package:vpn_ui_flutter/ui/views/activation_code/activation_code_view.dart';
import 'package:vpn_ui_flutter/ui/views/forgot_password/forgot_password_view.dart';
import 'package:vpn_ui_flutter/ui/views/login/login_view.dart';
import 'package:vpn_ui_flutter/ui/views/reset_password/reset_password_view.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: LoginView, initial: true, name: 'loginViewRoute'),
  MaterialRoute(page: ForgotPasswordView, name: 'forgotPasswordRoute'),
  MaterialRoute(page: ActivationCodeView, name: 'activationCodeRoute'),
  MaterialRoute(page: ResetPasswordView, name: 'resetPasswordRoute')
])
class $Router {}
