import 'package:flutter/material.dart';
import 'package:ginicoe_responsive_app/components/text_field_container.dart';
import 'package:ginicoe_responsive_app/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged; 
  final bool secureText;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged, 
    this.secureText = true,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: primaryColor,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            // secureText ? Icons.lock : Icons.visibility,
            Icons.lock,
            color: primaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: primaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}