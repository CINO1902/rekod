import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rekod/app/styles/fonts.dart';
import 'package:rekod/app/widget/busy_button.dart';
import 'package:rekod/app/widget/input_input.dart';
import 'package:rekod/core/app_assets.dart';
import 'package:rekod/core/app_colors.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final TextEditingController _cardController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBold(
                      'Payment',
                      fontSize: 20,
                    ),
                    const Gap(40),
                    TextBody(
                      'Card Number',
                      color: RekodColors.textColor,
                      fontWeight: FontWeight.w400,
                    ),
                    const Gap(10),
                    InputField(
                      textInputType: TextInputType.emailAddress,
                      controller: _cardController,
                      placeholder: '1234 2344 2334 221',
                      suffix: Image.asset(
                        AppAssets.mastercard,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    const Gap(20),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextBody(
                              'Exp date',
                              color: RekodColors.textColor,
                              fontWeight: FontWeight.w400,
                            ),
                            const Gap(10),
                            InputField(
                              textInputType: TextInputType.emailAddress,
                              controller: _cardController,
                              placeholder: 'DD/MM',
                              fieldWidth: 170,
                            ),
                          ],
                        ),
                        const Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextBody(
                              'CVV ',
                              color: RekodColors.textColor,
                              fontWeight: FontWeight.w400,
                            ),
                            const Gap(10),
                            InputField(
                              textInputType: TextInputType.emailAddress,
                              controller: _cardController,
                              placeholder: 'Enter CVV',
                              fieldWidth: 170,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Gap(30),
                    TextBody(
                      'Card Holder Name',
                      color: RekodColors.textColor,
                      fontWeight: FontWeight.w400,
                    ),
                    const Gap(10),
                    InputField(
                      textInputType: TextInputType.emailAddress,
                      controller: _cardController,
                      placeholder: 'Daniel Oluremi',
                    ),
                    const Gap(40),
                    BusyButton(
                      title: 'Pay Now',
                      onTap: () {
                        Navigator.pushNamed(context, '/Qrcode');
                      },
                    )
                  ]))),
    );
  }
}
