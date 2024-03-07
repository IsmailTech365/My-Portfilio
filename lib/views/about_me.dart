import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2_ismail/globals/app_colors.dart';
import 'package:portfolio2_ismail/globals/app_customText.dart';
import 'package:portfolio2_ismail/globals/constants.dart';
import 'package:portfolio2_ismail/helper%20class/helper_class.dart';
import 'package:portfolio2_ismail/model/myinformation.dart';
import 'package:portfolio2_ismail/widgets/profile_animation.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);
  Widget technology(String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        const SizedBox(width: 20),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ProfileAnimation(),
          Constants.sizedBox(height: 35.0),
          buildAboutMeContents(),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: buildAboutMeContents()),
          const ProfileAnimation(),
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: buildAboutMeContents()),
          const ProfileAnimation(),
        ],
      ),
      paddingWidth: 0,
      bgColor: AppColors.bgColor,
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: Wrap(
            children: [
              CustomText(
                text: AboutMEInfo.number,
                textsize: 20.0,
                color: const Color(0xff61F9D5),
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                width: 12.0,
              ),
              CustomText(
                text: AboutMEInfo.about,
                textsize: 26.0,
                color: const Color(0xffCCD6F6),
                fontWeight: FontWeight.w700,
              ),
              const CustomText(
                text: "__________________",
                textsize: 26.0,
                color: Color(0xff303C55),
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
        Constants.sizedBox(height: 40.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Wrap(
            children: [
              CustomText(
                text: AboutMEInfo.title1,
                textsize: 16.0,
                color: const Color(0xff828DAA),
                letterSpacing: 0.75,
              ),
              CustomText(
                text: AboutMEInfo.title2,
                textsize: 16.0,
                color: const Color(0xff828DAA),
                letterSpacing: 0.75,
              ),
              CustomText(
                text: AboutMEInfo.title3,
                textsize: 16.0,
                color: const Color(0xff828DAA),
                // fontWeight: FontWeight.w500,
                letterSpacing: 0.75,
              ),
            ],
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInUp(
            duration: const Duration(milliseconds: 1800),
            child: Wrap(
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      technology("Dart"),
                      technology("Flutter"),
                      technology("php"),
                      technology("SQL - MySQL"),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      technology("Firebase"),
                      technology("Github"),
                      technology("Git"),
                      technology("MVC Pattern"),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      technology("Office"),
                      technology("Kobo Toolbox"),
                      technology("Power Bi"),
                      technology("gsheet"),
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
}

