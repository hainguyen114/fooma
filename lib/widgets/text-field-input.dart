import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fooma/pallete.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.icon,
    required this.hint,
    this.inputType,
    this.inputAction,
    this.controller,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icon,
                  size: 28,
                  color: kWhite,
                ),
              ),
              hintText: hint,
              hintStyle: kBodyText,
              errorStyle: TextStyle(
                fontSize: 14.0,
              ),
            ),
            style: kBodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
            // validator: (value) {
            //   if (hint == 'Email') {
            //     if (value == null) {
            //       return "Your input is needed!";
            //     } else {
            //       return EmailValidator.validate(value)
            //           ? null
            //           : "Please enter a valid email";
            //     }
            //   }
            // },
          ),
        ),
      ),
    );
  }
}
