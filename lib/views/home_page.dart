// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2_ismail/globals/app_customText.dart';
import 'package:portfolio2_ismail/globals/constants.dart';
import 'package:portfolio2_ismail/helper%20class/helper_class.dart';
import 'package:portfolio2_ismail/model/myinformation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildHomePersonalInfo(size),
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
        ],
      ),
      paddingWidth: 0,
      bgColor: Colors.transparent,
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1000),
          child: CustomText(
            text: MyInformation.hi,
            textsize: 20.0,
            color: const Color(0xff41FBDA),
            letterSpacing: 3.0,
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInRight(
            duration: const Duration(milliseconds: 1200),
            child: CustomText(
              text: MyInformation.myName,
              textsize: 52.0,
              color: const Color(0xffCCD6F6),
              fontWeight: FontWeight.w900,
            )),
        Constants.sizedBox(height: 15.0),
        FadeInDown(
          duration: const Duration(milliseconds: 1400),
          child: Expanded(
            child: CustomText(
              text: MyInformation.introTitle,
              textsize: 42.0,
              color: const Color(0xffCCD6F6).withOpacity(0.6),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: Expanded(
            child: Text(
              MyInformation.introSubtitle,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 22.0,
                letterSpacing: 2.75,
                wordSpacing: 0.75,
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.10,
        ),
        FadeInDown(
          duration: const Duration(milliseconds: 1800),
          child: Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              color: const Color(0xff64FFDA),
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(0.75),
                height: 56.0,
                width: 230.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xff0A192F),
                ),
                child: MaterialButton(
                  onPressed: () {
                    // method.launchEmail();
                  },
                  hoverColor: Colors.green,
                  child: Text(
                    MyInformation.textButton,
                    style: const TextStyle(
                      color: Color(0xff64FFDA),
                      letterSpacing: 2.75,
                      wordSpacing: 1.0,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // SizedBox(
        //   height: size.height * 0.10,
        // ),
      ],
    );
  }
}
