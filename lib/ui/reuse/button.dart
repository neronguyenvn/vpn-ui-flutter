import 'package:flutter/material.dart';
import 'package:vpn_ui_flutter/ui/reuse/width_ratio.dart';

class Button extends StatelessWidget {
  final String text;
  double bottomPading;
  final VoidCallback onTap;

  Button({@required this.text, this.bottomPading, this.onTap})
      : assert(text != null);

  @override
  Widget build(BuildContext context) {
    final _widthRatio = widthRatio(context);
    bottomPading = (bottomPading == null) ? 0 : bottomPading;
    return Container(
      width: 273 * _widthRatio,
      child: Padding(
        padding: EdgeInsets.only(bottom: bottomPading),
        child: RaisedButton(
          textColor: Color(0xFFFFFFFF),
          color: Color(0xFF525252),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          onPressed: onTap,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
