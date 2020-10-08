import 'package:flutter/material.dart';
import 'package:vpn_ui_flutter/ui/reuse/width_ratio.dart';

class EditText extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscure;
  final double paddingBottom;

  const EditText(
      {this.label, this.hint, this.obscure = false, this.paddingBottom});

  @override
  Widget build(BuildContext context) {
    final _widthRatio = widthRatio(context);
    final _labelText = label != null
        ? Text(label, style: TextStyle(color: Color(0xFF333333)))
        : Container(width: 1, height: 1,);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(bottom: 6), child: _labelText),
        Container(
          width: 273 * _widthRatio,
          child: Padding(
            padding: EdgeInsets.only(bottom: paddingBottom),
            child: TextField(
              obscureText: obscure,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 14, horizontal: 14 * _widthRatio),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Color(0xFFD4D4D4))),
                  hintText: hint,
                  hintStyle: TextStyle(color: Color(0xFF959595))),
            ),
          ),
        )
      ],
    );
  }
}
