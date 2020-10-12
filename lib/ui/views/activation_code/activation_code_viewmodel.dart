import 'package:stacked/stacked.dart';
import 'package:vpn_ui_flutter/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vpn_ui_flutter/app/router.gr.dart';

class ActivationCodeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  String _activationCode = 'ACTIVATION CODE';

  String get activationCode => _activationCode;

  String _activationCodeDescription =
      'Please enter the activation code sent to your registered email inbox';

  String get activationCodeDescription => _activationCodeDescription;

  String _activationHint = 'Activation code';

  String get activationHint => _activationHint;

  String _buttonText = 'Continue';

  String get buttonText => _buttonText;

  String _notReceiveText = 'Didn\'t receive the code?';

  String get notReceiveText => _notReceiveText;

  String _resendText = 'Resend';

  String get resendText => _resendText;

  Future navToReset() async {
    await _navigationService.navigateTo(Routes.resetPasswordRoute);
  }

  Future resendOnTap() async {}
}
