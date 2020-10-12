import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vpn_ui_flutter/ui/reuse/button.dart';
import 'package:vpn_ui_flutter/ui/reuse/edit_text.dart';
import 'package:vpn_ui_flutter/ui/views/forgot_password/forgot_password_viewmodel.dart';
import 'package:vpn_ui_flutter/app/width_ratio.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotPasswordViewModel>.nonReactive(
        builder: (context, model, child) {
          final _widthRatio = widthRatio(context);
          final _emailEditText = EditText(
            label: model.emailLabel,
            hint: 'Enter ' + model.emailLabel.toLowerCase(),
            paddingBottom: 27,
          );
          final _sendButton = Button(
            text: model.buttonText,
            bottomPading: 21,
            onTap: model.navToActivation,
          );
          return Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 21),
                    child: Text(
                      model.forgotPasswod,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 273 * _widthRatio,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 21),
                      child: Center(
                        child: Text(
                          model.forgotPasswordDescription,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(child: _emailEditText),
                  Container(child: _sendButton),
                  GestureDetector(
                    onTap: model.navtoLogin,
                    child: Text(
                      model.backText,
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        viewModelBuilder: () => ForgotPasswordViewModel());
  }
}
