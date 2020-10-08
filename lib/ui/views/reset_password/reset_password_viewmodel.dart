import 'package:stacked/stacked.dart';

class ResetPasswordViewModel extends BaseViewModel {
  String _resetPassword = 'RESET PASSWORD';
  String get resetPassword => _resetPassword;

  String _newPasswordLabel = 'New Password';
  String get newPasswordLabel => _newPasswordLabel;
  
  String _newPasswordHint = 'Enter new password';
  String get newPasswordHint => _newPasswordHint;

  String _confirmPasswordLabel = 'Confirm Password';
  String get confirmPasswordLabel => _confirmPasswordLabel;
  
  String _confirmPasswordHint = 'Enter password again';
  String get confirmPasswordHint => _confirmPasswordHint;

  String _buttonText = 'Reset';
  String get buttonText => _buttonText;

  void buttonOnTap() {
}
}
