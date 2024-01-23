import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rekod/app/styles/fonts.dart';
import 'package:rekod/app/widget/busy_button.dart';
import 'package:rekod/core/app_assets.dart';

class QRcode extends StatefulWidget {
  const QRcode({super.key});

  @override
  State<QRcode> createState() => _QRcodeState();
}

class _QRcodeState extends State<QRcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBold(
                'Thank You for using Reckord',
                fontSize: 20,
              ),
              const Gap(10),
              TextSmall(
                "Your QR code is ready to go",
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
              const Gap(40),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppAssets.qrcode,
                  height: 222,
                  width: 222,
                ),
              ),
              const Gap(50),
              BusyButton(
                title: 'Download Image',
                onTap: () {},
              ),
              const Gap(20),
              BusyButton(
                title: 'Go Back to home',
                buttonColor:
                    Color.fromARGB(255, 146, 154, 164).withOpacity(0.4),
                borderColor: Colors.transparent,
                titleColor: Colors.black.withOpacity(.7),
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
