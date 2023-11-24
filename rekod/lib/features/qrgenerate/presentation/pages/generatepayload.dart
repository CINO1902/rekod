import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rekod/app/styles/fonts.dart';
import 'package:rekod/app/widget/busy_button.dart';
import 'package:rekod/app/widget/input_input.dart';
import 'package:rekod/core/app_assets.dart';
import 'package:rekod/core/app_colors.dart';

class GeneratePayload extends StatefulWidget {
  const GeneratePayload({super.key});

  @override
  State<GeneratePayload> createState() => _GeneratePayloadState();
}

class _GeneratePayloadState extends State<GeneratePayload> {
  final TextEditingController _payloadcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppAssets.user1,
                  height: 150,
                  width: 150,
                ),
              ),
              const Gap(40),
              TextBody('Enter Matric Number', color: RekodColors.textColor),
              const Gap(8),
              InputField(
                textInputType: TextInputType.emailAddress,
                controller: _payloadcontroller,
                placeholder: 'Enter your Matric Number',
              ),
              const Gap(40),
              BusyButton(
                title: 'Generate QR Code(N50)',
                onTap: () {
                  Navigator.pushNamed(context, '/payment');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
