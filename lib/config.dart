import 'dart:ui';

import 'package:flutter/material.dart';

const Color myPrimaryColor = Color(0xff040264);

class CommonStyle {
  static InputDecoration textFieldStyle(
      {String labelTextStr = "", String hintTextStr = ""}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(12),
      labelText: labelTextStr,
      hintText: hintTextStr,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
