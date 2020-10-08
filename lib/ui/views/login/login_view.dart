import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vpn_ui_flutter/ui/button.dart';
import 'package:vpn_ui_flutter/ui/edit_text.dart';
import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
      builder: (context, model, child) {
        final _emailEditText = EditText(
          label: model.emailLabel,
          hint: 'Enter ' + model.emailLabel.toLowerCase(),
          paddingBottom: 25,
        );
        final _passwordEditText = EditText(
          label: model.passLabel,
          hint: 'Enter ' + model.passLabel.toLowerCase(),
          obscure: true,
          paddingBottom: 25,
        );
        final _loginButton = Button(
            text: model.buttonText, bottomPading: 28, onTap: model.buttonOnTap);
        return Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: (Text(
                    model.fense,
                    style: TextStyle(
                        fontSize: 48,
                        color: Color(0xFF828282),
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 39),
                  child: Text(
                    model.logIntoYourAccount,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(child: _emailEditText),
                Container(child: _passwordEditText),
                Container(child: _loginButton),
                GestureDetector(
                  onTap: model.forgotTextOnTap,
                  child: Text(
                    model.forgotText,
                    style: TextStyle(
                        fontSize: 14, decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
