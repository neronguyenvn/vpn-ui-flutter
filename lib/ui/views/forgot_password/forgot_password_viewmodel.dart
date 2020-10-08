import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vpn_ui_flutter/app/locator.dart';
import 'package:vpn_ui_flutter/app/router.gr.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  String _forgotPassword = 'FORGOT PASSWORD';
  String get forgotPasswod => _forgotPassword;

  String _forgotPasswordDescription = 'Enter your registered email below to receive password reset instruction';
  String get forgotPasswordDescription => _forgotPasswordDescription;

  String _emailLabel = 'Email';
  String get emailLabel => _emailLabel;

  String _buttonText = 'Send activation link';
  String get buttonText => _buttonText;

  String _backText = 'Back to login';
  String get backText => _backText;

  Future navtoLogin() async {
    _navigationService.navigateTo(Routes.loginViewRoute);
  }

  Future navToActivation() async {
    _navigationService.navigateTo(Routes.activationCodeRoute);
  }
}