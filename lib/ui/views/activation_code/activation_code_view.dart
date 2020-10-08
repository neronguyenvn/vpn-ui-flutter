import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vpn_ui_flutter/ui/reuse/button.dart';
import 'package:vpn_ui_flutter/ui/reuse/edit_text.dart';
import 'package:vpn_ui_flutter/ui/views/activation_code/activation_code_viewmodel.dart';
import 'package:vpn_ui_flutter/ui/reuse/width_ratio.dart';

class ActivationCodeView extends StatelessWidget {
  const ActivationCodeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActivationCodeViewModel>.nonReactive(
        builder: (context, model, child) {
          final _widthRatio = widthRatio(context);
          final _activationEditText = EditText(
            hint: model.activationHint,
            paddingBottom: 12,
          );
          final _continueButton = Button(
            text: model.buttonText,
            onTap: model.navToReset,
            bottomPading: 21,
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
                      model.activationCode,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 273 * _widthRatio,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 14),
                      child: Text(
                        model.activationCodeDescription,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(child: _activationEditText),
                  Container(child: _continueButton),
                  Text(
                    model.notReceiveText,
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: model.resendOnTap,
                    child: Text(
                      model.resendText,
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        viewModelBuilder: () => ActivationCodeViewModel());
  }
}
