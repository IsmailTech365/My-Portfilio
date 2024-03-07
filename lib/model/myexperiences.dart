// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio2_ismail/widgets/work_custom.dart';

class MyExperiences extends StatelessWidget {
  const MyExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Faculty of Information Engineering, specializing in software",
          subTitle:
              "I studied and graduated from the Faculty of Information Engineering \nat University of Idlib",
          duration: "2017 - 2021",
        ),
        WorkCustomData(
          title:
              "Freelancer - Flutter | Dart Mobile App Developer | UI - UX Designer",
          subTitle:
              "Flutter Developer and experienced programmer with an extensive history of designing and coding \nsolutions. Skilled in Google’s Flutter/Dart, Firebase App and Web development on a global scale. If you \nare looking for someone that you can trust that will complete your app on time and on budget, then \nplease contact me. I have been developing software for over three years and take pride in everything I do.",
          duration: "Dec - 2019 until now ",
        ),
        WorkCustomData(
          title: "Information Management Officer",
          subTitle:
              "I worked as an administrator for the Information Management Office and fully supervised the media office at the Bahar Organization.",
          duration: "Jan - 2020 to Nov 2020",
        ),
        WorkCustomData(
          title: "Flutter Developer at Nasaem Khair Organization",
          subTitle:
              "Creating applications to manage the organization's tasks and manage the organization's databases \nin addition to greatly facilitating the organization's affairs.",
          duration: "Jan - 2021 to Oct - 2023",
        ),
        WorkCustomData(
          title:
              "Managing SQL databases and creating an API for my applications",
          subTitle:
              "I linked a lot of my applications to databases, created a lot of APIs for my applications using PHP \nand helped my colleagues so that I could leverage my skills and be an asset to the organization.",
          duration: "Apr - 2020 until now ",
        ),
      ],
    );
  }
}
