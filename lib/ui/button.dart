import 'package:flutter/material.dart';

const _figmaWidth = 375;

class Button extends StatelessWidget {
  final String text;
  final double bottomPading;
  final VoidCallback onTap;

  const Button({@required this.text, this.bottomPading, this.onTap})
      : assert(text != null);

  @override
  Widget build(BuildContext context) {
    final _widthRatio = MediaQuery.of(context).size.width / _figmaWidth;
    return Container(
      width: 273 * _widthRatio,
      child: Padding(
        padding: EdgeInsets.only(bottom: bottomPading),
        child: RaisedButton(
          textColor: Color(0xFFFFFFFF),
          color: Color(0xFF525252),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)),
          onPressed: onTap,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
