import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:rekod/feature/features/onboarding/presentation/pages/login.dart';
import 'package:rekod/features/onboarding/presentation/pages/homepage.dart';
import 'package:rekod/features/payment/presentation/pages/payment.dart';
import 'package:rekod/features/qrgenerate/presentation/pages/generatepayload.dart';
import 'package:rekod/features/qrgenerate/presentation/pages/qrcode.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterNativeSplash.remove();
    //WidgetsBinding.instance.addPostFrameCallback((_) => initialization());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const login(),
          '/home': (context) => const home(),
          '/payloadgenerate': (context) => const GeneratePayload(),
          '/payment': (context) => const Payment(),
          '/Qrcode': (context) => const QRcode(),
        });
  }
}
