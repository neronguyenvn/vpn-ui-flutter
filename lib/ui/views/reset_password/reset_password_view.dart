import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vpn_ui_flutter/ui/reuse/button.dart';
import 'package:vpn_ui_flutter/ui/reuse/edit_text.dart';
import 'package:vpn_ui_flutter/ui/views/reset_password/reset_password_viewmodel.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ResetPasswordViewModel>.nonReactive(
        builder: (context, model, child) {
          final _newPasswordEditText = EditText(
            label: model.newPasswordLabel,
            hint: model.newPasswordHint,
            paddingBottom: 23,
            obscure: true,
          );
          final _confirmPasswordEditText = EditText(
            label: model.confirmPasswordLabel,
            hint: model.confirmPasswordHint,
            paddingBottom: 23,
            obscure: true,
          );
          final _resetButton = Button(
            text: model.buttonText,
            onTap: model.buttonOnTap,
          );
          return Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Text(
                      model.resetPassword,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: _newPasswordEditText,
                  ),
                  Container(
                    child: _confirmPasswordEditText,
                  ),
                  Container(
                    child: _resetButton,
                  )
                ],
              ),
            ),
          );
        },
        viewModelBuilder: () => ResetPasswordViewModel());
  }
}
