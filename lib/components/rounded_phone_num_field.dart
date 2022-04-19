import 'package:flutter/material.dart';
import 'package:ginicoe_responsive_app/components/text_field_container.dart';
import 'package:ginicoe_responsive_app/constants.dart';

class RoundedPhoneNumField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPhoneNumField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: primaryColor,
        keyboardType: TextInputType.number,
        maxLength: 12,
        decoration: const InputDecoration(
          hintText: "Phone Number",
          icon: Icon(
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