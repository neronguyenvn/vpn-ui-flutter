import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vpn_ui_flutter/app/locator.dart';
import 'package:vpn_ui_flutter/app/router.gr.dart';

class LoginViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  String _fense = 'FENSE';
  String get fense => _fense;

  String _logInDescription = 'LOG INTO YOUR ACCOUNT';
  String get logInDescription => _logInDescription;

  String _emailLabel = "Email";
  String get emailLabel => _emailLabel;

  String _passLabel = "Password";
  String get passLabel => _passLabel;

  String _buttonText = "Login";
  String get buttonText => _buttonText;

  String _forgotText = "Forgot password";
  String get forgotText => _forgotText;

  void buttonOnTap() {
    print("Tap");
  }

  Future navToForgot() async {
    await _navigationService.navigateTo(Routes.forgotPasswordRoute);
  }
}
