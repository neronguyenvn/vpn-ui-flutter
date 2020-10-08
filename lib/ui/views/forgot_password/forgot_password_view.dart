import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vpn_ui_flutter/ui/views/forgot_password/forgot_password_viewmodel.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotPasswordViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: Column(children: [Text('Hello')]),
              ),
            ),
        viewModelBuilder: () => ForgotPasswordViewModel());
  }
}
