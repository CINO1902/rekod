import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rekod/app/styles/fonts.dart';
import 'package:rekod/core/app_assets.dart';
import 'package:rekod/core/app_colors.dart';
import 'package:rekod/features/onboarding/presentation/widgets/actiondirectbtn.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
              color: RekodColors.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBold(
                    'Welcome Back To Reckord',
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  const Gap(10),
                  TextSmall(
                    "Effortlessly Manage Library Access",
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 200),
          child: Align(
            alignment: Alignment.center,
            // padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ActionDirect(
                  title: 'Generate a Reckord QR code',
                  fontsize: 16,
                  subtitle:
                      'Quickly and simply generate a QR that would be use...',
                  onTap: () {
                    Navigator.pushNamed(context, '/payloadgenerate');
                  },
                  image: AppAssets.qrimage,
                ),
                const Gap(30),
                ActionDirect(
                    title: 'Sign In/Out a User',
                    subtitle: 'Streamlining User checkin and checkout',
                    onTap: () {},
                    image: AppAssets.user,
                    active: false),
                const Gap(30),
                ActionDirect(
                    title: 'View Records',
                    subtitle: 'Review your library activity and  history',
                    onTap: () {},
                    image: AppAssets.activity,
                    active: false),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
