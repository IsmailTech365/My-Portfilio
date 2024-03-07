// ignore_for_file: library_private_types_in_public_api, unused_element, avoid_print, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio2_ismail/globals/appbarTitle.dart';
import 'package:portfolio2_ismail/views/about_me.dart';
import 'package:portfolio2_ismail/views/contact_us.dart';
import 'package:portfolio2_ismail/views/home_page.dart';
import 'package:portfolio2_ismail/views/my_portfolio.dart';
import 'package:portfolio2_ismail/views/my_services.dart';
import 'package:portfolio2_ismail/views/my_work.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class MainDashBoard extends StatefulWidget {
  const MainDashBoard({Key? key}) : super(key: key);

  @override
  _MainDashBoardState createState() => _MainDashBoardState();
}

class _MainDashBoardState extends State<MainDashBoard> {
  final _itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  final onMenuHover = Matrix4.identity()..scale(1.0);
  final menuItems = <String>[
    'HomePage',
    'AboutMe',
    'Work',
    'MyServices',
    'MyPortfolio',
    'ContactUs',
  ];

  var menuIndex = 0;

  bool isExpaned = true;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => scrollTo(0));
    super.initState();
  }

  final screensList = const [
    HomePage(),
    AboutMe(),
    Work(),
    MyServices(),
    MyPortfolio(),
    ContactUs(),
  ];

  void scrollTo(int index) => _itemScrollController
          .scrollTo(
              index: index,
              duration: const Duration(milliseconds: 10),
              curve: Curves.ease)
          .whenComplete(() {
        setState(() {
          menuIndex = index;
        });
      });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 60,
        titleSpacing: 40,
        elevation: 0,
        title: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 768) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.computer_outlined,
                        size: 32.0,
                        color: Color(0xff64FFDA),
                      ),
                      onPressed: () {}),
                  const Spacer(),
                  PopupMenuButton(
                    icon: Icon(
                      Icons.menu_sharp,
                      size: 32,
                      color: AppColors.white,
                    ),
                    // color: AppColors.white,
                    position: PopupMenuPosition.under,
                    shape: Border.all(),
                    constraints:
                        BoxConstraints.tightFor(width: size.width * 0.2),
                    itemBuilder: (BuildContext context) => menuItems
                        .asMap()
                        .entries
                        .map(
                          (e) => PopupMenuItem(
                            textStyle: AppTextStyles.headerTextStyle(),
                            onTap: () {
                              scrollTo(e.key);
                            },
                            child: Text(e.value),
                          ),
                        )
                        .toList(),
                  ),
                ],
              );
            } else {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.computer_outlined,
                        size: 32.0,
                        color: Color(0xff64FFDA),
                      ),
                      onPressed: () {}),
                  const Spacer(),
                  // SizedBox(
                  //   height: 30,
                  //   child: ListView.separated(
                  //     itemCount: menuItems.length,
                  //     shrinkWrap: true,
                  //     padding: const EdgeInsets.symmetric(horizontal: 10),
                  //     scrollDirection: Axis.horizontal,
                  //     separatorBuilder: (context, child) =>
                  //         Constants.sizedBox(width: 8),
                  //     itemBuilder: (context, index) {
                  //       return InkWell(
                  //         onTap: () {
                  //           scrollTo(index: index);
                  //         },
                  //         borderRadius: BorderRadius.circular(100),
                  //         onHover: (value) {
                  //           setState(() {
                  //             if (value) {
                  //               menuIndex = index;
                  //             } else {
                  //               menuIndex = 0;
                  //             }
                  //           });
                  //         },
                  //         child: buildNavBarAnimatedContainer(
                  //             index, menuIndex == index ? true : false),
                  //       );
                  //     },
                  //   ),
                  // ),
                  Expanded(
                    child: DefaultTabController(
                      length: 4,
                      child: TabBar(
                        indicatorColor: Colors.transparent,
                        onTap: (index) async {
                          scrollTo(index);
                        },
                        tabs: const [
                          Tab(
                            child: AppBarTitle(
                              text: 'About',
                            ),
                          ),
                          Tab(
                            child: AppBarTitle(
                              text: 'Services',
                            ),
                          ),
                          Tab(
                            child: AppBarTitle(
                              text: 'Project',
                            ),
                          ),
                          Tab(
                            child: AppBarTitle(
                              text: 'Contact Us',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Constants.sizedBox(width: 30),
                  Card(
                    elevation: 4.0,
                    color: const Color(0xff64FFDA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(0.85),
                      height: size.height * 0.07,
                      width: size.height * 0.20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xff0A192F),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          //  method.launchURL(
                          //        "https://drive.google.com/file/d/1yHLcrN5pCUGIeT8SrwC2L95Lv0MVbJpx/view?usp=sharing");
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Text(
                            "Resume",
                            style: TextStyle(
                              color: Color(0xff64FFDA),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github),
                      color: const Color(0xffffa8b2d1),
                      iconSize: 16.0,
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.mail),
                      color: const Color(0xffffa8b2d1),
                      iconSize: 16.0,
                      onPressed: () {}),
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    color: const Color(0xffffa8b2d1),
                    onPressed: () {},
                    iconSize: 16.0,
                  ),
                  IconButton(
                      icon: const Icon(Icons.call),
                      color: const Color(0xffffa8b2d1),
                      iconSize: 16.0,
                      onPressed: () {}),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.facebook),
                      color: const Color(0xffffa8b2d1),
                      iconSize: 16.0,
                      onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      height: size.height * 0.20,
                      width: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: ScrollablePositionedList.builder(
              itemCount: screensList.length,
              itemScrollController: _itemScrollController,
              itemBuilder: (context, index) {
                return screensList[index];
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RotatedBox(
                    quarterTurns: 45,
                    child: Text(
                      "Ismailtech365@gmail.com",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.6),
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      height: 100,
                      width: 2,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.headerTextStyle(
            color: hover ? AppColors.themeColor : AppColors.white),
      ),
    );
  }
}
