import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyBottomBar extends StatefulWidget {
  static const id = "/my_bottom_bar";

  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar>
    with TickerProviderStateMixin {
  int currentValue = 0;

  late AnimationController _controller;
  late Animation<double> _animation;

  late AnimationController _controller2;
  late Animation<double> _animation2;

  late AnimationController _controller3;
  late Animation<double> _animation3;

  late AnimationController _controller4;
  late Animation<double> _animation4;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });

    _controller2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation2 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
        parent: _controller2,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });

    _controller3 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation3 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
        parent: _controller3,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });

    _controller4 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation4 = Tween<double>(begin: 25, end: 33).animate(CurvedAnimation(
        parent: _controller4,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          /// Home Page
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/ocean.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: size.height,
            width: size.width,
            child: null,
          ),

          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              // height: size.height * .14,
              // width: size.width,
              height: 60,
              width: 30,
              // margin: EdgeInsets.all(size.width * .04),
              margin: const EdgeInsets.all(50),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// Home icon
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: currentValue == 0 ? Colors.black : Colors.grey,
                      size: _animation.value,
                    ),
                    onPressed: () {
                      setState(() {
                        currentValue = 0;
                        _controller.forward();
                        _controller2.reverse();
                        _controller3.reverse();
                        _controller4.reverse();
                        HapticFeedback.lightImpact();
                      });
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),

                  /// Search icon
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: currentValue == 1 ? Colors.black : Colors.grey,
                      size: _animation2.value,
                    ),
                    onPressed: () {
                      setState(() {
                        currentValue = 1;
                        _controller2.forward();
                        _controller.reverse();
                        _controller3.reverse();
                        _controller4.reverse();
                        HapticFeedback.lightImpact();
                      });
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),

                  /// Message icon
                  IconButton(
                    icon: Icon(
                      Icons.message_rounded,
                      color: currentValue == 2 ? Colors.black : Colors.grey,
                      size: _animation3.value,
                    ),
                    onPressed: () {
                      setState(() {
                        currentValue = 2;
                        _controller3.forward();
                        _controller.reverse();
                        _controller2.reverse();
                        _controller4.reverse();
                        HapticFeedback.lightImpact();
                      });
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),

                  /// Person icon
                  IconButton(
                    // icon: Icon(
                    //   Icons.person,
                    //   color: currentValue == 3 ? Colors.black : Colors.grey,
                    //   size: _animation4.value,
                    // ),

                    icon: const ImageIcon(
                      AssetImage("assets/images/bars.png"),
                      size: 25,
                    ),
                    onPressed: () {
                      setState(() {
                        currentValue = 3;
                        _controller4.forward();
                        _controller.reverse();
                        _controller2.reverse();
                        _controller3.reverse();
                        HapticFeedback.lightImpact();
                      });
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
