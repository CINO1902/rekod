import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rekod/app/styles/fonts.dart';
import 'package:rekod/app/widget/busy_button.dart';
import 'package:rekod/app/widget/input_input.dart';
import 'package:rekod/core/app_colors.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBold(
                'Welcome Back To Reckord',
                fontSize: 20,
              ),
              const Gap(10),
              TextSmall(
                "We're delighted to see you again. Please \n login to access your account",
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
              const Gap(20),
              TextBody('Email Address', color: RekodColors.textColor),
              const Gap(8),
              InputField(
                textInputType: TextInputType.emailAddress,
                controller: _emailController,
                placeholder: 'abcdef@gmail.com',
              ),
              const Gap(20),
              TextBody('Password', color: RekodColors.textColor),
              const Gap(8),
              InputField(
                textInputType: TextInputType.emailAddress,
                controller: _passwordController,
                placeholder: 'Enter your password',
              ),
              const Gap(30),
              BusyButton(
                title: 'Login',
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
