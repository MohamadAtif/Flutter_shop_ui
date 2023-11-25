import 'package:flutter/material.dart';

import '../config.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {super.key,
      this.obscureText,
      this.onChanged,
      this.icon,
      this.ontap,
      this.validator,
      required this.controller,
      this.keyboardType,
      this.focusNode,
      required this.labelText,
      required this.hintText,
      this.width});

  final double? width;
  String labelText;
  bool? obscureText = false;
  IconData? icon;
  Function(dynamic)? onChanged;
  TextEditingController controller = TextEditingController();
  VoidCallback? ontap;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  final FocusNode? focusNode;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        focusNode: focusNode,
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus();
        },
        validator: (value) => (value),
        decoration: CommonStyle.textFieldStyle(
            labelTextStr: labelText, hintTextStr: hintText),
      ),
    );
  }
}
