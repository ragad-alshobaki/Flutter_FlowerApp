import 'package:flutter/material.dart';

class TextFieldW extends StatelessWidget {
  final TextInputType inputType;
  final bool isPassword;
  final String hintTxt;
  const TextFieldW({
    super.key,
    required this.inputType,
    required this.isPassword,
    required this.hintTxt,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // keyboardType: TextInputType.emailAddress,
      keyboardType: inputType,
      // obscureText: true,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintTxt,
        enabledBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        filled: true,
        // fillColor: Colors.blueGrey,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
