// ignore_for_file: library_private_types_in_public_api, file_names, avoid_unnecessary_containers, deprecated_member_use

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2_ismail/globals/app_colors.dart';
import 'package:portfolio2_ismail/globals/app_customText.dart';
import 'package:portfolio2_ismail/globals/constants.dart';
import 'package:portfolio2_ismail/helper%20class/helper_class.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio2_ismail/model/myexperiences.dart';
import 'package:portfolio2_ismail/model/myinformation.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HelperClass(
      mobile: Column(
        children: [
          buildAboutMeContents(),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: buildAboutMeContents()),
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: buildAboutMeContents()),
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
                text: Myexperiences.experienceNumber,
                textsize: 20.0,
                color: const Color(0xff61F9D5),
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(width: 12.0),
              CustomText(
                text: Myexperiences.experiences,
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
        Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                  height: 1200,
                  child: Stack(
                    children: [
                      const Center(
                        child: VerticalDivider(
                          color: Color(0xff64FFDA),
                          thickness: 1.75,
                          width: 10,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Container(
                        child: const Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.pink,
                              child: FaIcon(FontAwesomeIcons.laptopHouse,
                                  color: Colors.white),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              child: FaIcon(FontAwesomeIcons.freeCodeCamp,
                                  color: Colors.white),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.brown,
                              child: FaIcon(FontAwesomeIcons.laptopCode,
                                  color: Colors.white),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.deepOrange,
                              child: FaIcon(FontAwesomeIcons.coffee,
                                  color: Colors.white),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.deepPurple,
                              child: FaIcon(FontAwesomeIcons.dev,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                      )
                    ],
                  )),
            ),
            const Expanded(
                flex: 5,
                child: SizedBox(
                  height: 1200,
                  child: MyExperiences(),
                ))
          ],
        )
      ],
    );
  }
}
