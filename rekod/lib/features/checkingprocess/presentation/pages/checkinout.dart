import 'package:flutter/material.dart';
import 'package:rekod/features/qrgenerate/presentation/pages/qrcode.dart';

class CheckInOut extends StatelessWidget {
  const CheckInOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
        child: QRcode(),
      )),
    );
  }
}
