import 'package:flutter/material.dart';

const _figmaWidth = 375;

double widthRatio(BuildContext context) {
  return MediaQuery.of(context).size.width / _figmaWidth;
}
