import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vpn_ui_flutter/ui/reuse/button.dart';
import 'package:vpn_ui_flutter/ui/reuse/edit_text.dart';
import 'package:vpn_ui_flutter/ui/views/login/login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key key}) : super(key: key);

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
                        fontWeight: FontWeight.bold,
                        letterSpacing: 5),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 39),
                  child: Text(
                    model.logInDescription,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(child: _emailEditText),
                Container(child: _passwordEditText),
                Container(child: _loginButton),
                GestureDetector(
                  onTap: model.navToForgot,
                  child: Text(
                    model.forgotText,
                    style: TextStyle(decoration: TextDecoration.underline),
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
