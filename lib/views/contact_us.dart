import 'package:flutter/material.dart';
import 'package:portfolio2_ismail/globals/app_customText.dart';
import 'package:portfolio2_ismail/helper%20class/helper_class.dart';
import '../globals/app_colors.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HelperClass(
      mobile: buildForm(),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: 0,
      bgColor: AppColors.bgColor,
    );
  }

  Column buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // buildContactText(),
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: "05. What's Next?",
                textsize: 16.0,
                color: Color(0xff41FBDA),
                letterSpacing: 3.0,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const CustomText(
                text: "Get In Touch",
                textsize: 42.0,
                color: Colors.white,
                letterSpacing: 3.0,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Wrap(
                children: [
                  Text(
                    "Although I'm currently looking for SDE-1 opportunities, my inbox is \nalways open. Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      letterSpacing: 0.75,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              InkWell(
                onTap: () {},
                child: Card(
                  elevation: 4.0,
                  color: const Color(0xff64FFDA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(0.85),
                    height: 60,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xff0A192F),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Text(
                        "Say Hello",
                        style: TextStyle(
                          color: Color(0xff64FFDA),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
