// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({Key? key}) : super(key: key);

  @override
  _ProfileAnimationState createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    _animation = Tween(begin: const Offset(0, 0.05), end: const Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: _animation,
        child: SizedBox(
          width: 480,
          height: 550,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                child: Card(
                  color: const Color(0xff61F9D5),
                  child: Container(
                    margin: const EdgeInsets.all(2.75),
                    width: 320,
                    height: 400,
                    color: const Color(0xff0A192F),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 380,
                decoration: const BoxDecoration(
                    color: Colors.black54,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/ismail.png")),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ],
          ),
        ));
  }
}
