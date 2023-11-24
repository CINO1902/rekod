import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rekod/core/app_assets.dart';
import 'package:rekod/core/app_colors.dart';

class ActionDirect extends StatelessWidget {
  const ActionDirect({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
    this.titleColor = RekodColors.white,
    this.buttonColor = RekodColors.primaryColor,
    this.borderColor = RekodColors.primaryColor,
    this.fontsize = 16,
    this.active = true,
  });
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onTap;
  final bool active;
  final Color buttonColor;
  final Color titleColor;
  final Color borderColor;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: active ? onTap : null,
      child: Container(
        height: 105,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            color: RekodColors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 196, 196, 196),
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 15.0,
                spreadRadius: 3.0,
              ), //BoxShadow
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 25),
                child:
                    SizedBox(height: 40, width: 40, child: Image.asset(image)),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(15),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: fontsize, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      subtitle,

                      //  overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30, width: 30, child: Image.asset(AppAssets.next)),
          ],
        ),
      ),
    );
  }
}
