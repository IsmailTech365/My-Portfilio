import 'package:flutter/material.dart';
import 'package:portfolio2_ismail/globals/app_colors.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: AppColors.bgColor,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          // height: 40,
          // width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.themeColor),
          child: const Row(
            children: [
              Text(
                "Designed & Built by Ismail Alsmail 💙 Flutter",
                style: TextStyle(
                  //   color: Colors.white.withOpacity(0.4),
                  letterSpacing: 1.25,
                  fontSize: 12.0,
                ),
              ),
              Icon(
                Icons.arrow_upward,
                size: 25,
                color: Color.fromARGB(255, 236, 0, 0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
