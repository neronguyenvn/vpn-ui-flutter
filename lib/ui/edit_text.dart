import 'package:flutter/material.dart';

const _figmaWidth = 375;

class EditText extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscure;
  final double paddingBottom;

  const EditText(
      {this.label, this.hint, this.obscure = false, this.paddingBottom});

  @override
  Widget build(BuildContext context) {
    final _widthRatio = MediaQuery.of(context).size.width / _figmaWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 6),
          child: Text(
            label,
            style:
                TextStyle(fontSize: 14, color: Color(0xFF333333)),
          ),
        ),
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
                  hintStyle: TextStyle(
                      fontSize: 14, color: Color(0xFF959595))),
            ),
          ),
        )
      ],
    );
  }
}
