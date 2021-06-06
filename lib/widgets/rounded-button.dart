import 'package:flutter/material.dart';
import 'package:fooma/authentication-service.dart';
import 'package:provider/provider.dart';
import 'package:fooma/pallete.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
    this.emailController,
    this.passwordController,
    this.formKey,
  }) : super(key: key);

  final String buttonName;

  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  final GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBlue,
      ),
      child: TextButton(
        onPressed: () {
          if (formKey!.currentState!.validate()) {
            if (buttonName == 'Login') {
              print(emailController!.text.trim());
              print(passwordController!.text.trim());
              context.read<AuthenticationService>().signIn(
                    email: emailController!.text.trim(),
                    password: passwordController!.text.trim(),
                  );
            }
          }
        },
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
