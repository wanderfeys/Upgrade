import 'package:courseApp/components/Lists/explore_section_list.dart';
import 'package:courseApp/components/Lists/recent_section_list.dart';
import 'package:courseApp/components/sideBarComponents/home_screen_bar.dart';
import 'package:courseApp/screens/side_bar_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'continue_watch_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Animation<Offset> sideBarAnimation;
  Animation<double> fadeAnimation;
  AnimationController sideBarAnimationController;
  bool sidebarHidding = true;
  @override
  void initState() {
    super.initState();
    sideBarAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    sideBarAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: sideBarAnimationController,
        curve: Curves.easeInOut,
      ),
    );
    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: sideBarAnimationController,
        curve: Curves.easeOut,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    sideBarAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: kBackgrounGradient,
        ),
        child: Stack(children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HomeScreenNavBAr(
                      triggerAnimation: () {
                        setState(() {
                          sidebarHidding = !sidebarHidding;
                        });
                        sideBarAnimationController.forward();
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Recents",
                          style: kLargeTitleStyle,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Twenty three courses up coming!",
                          style: kSubtitleStyle,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    RecentCourseList(),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 25.0,
                          bottom: 16.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Explore",
                              style: kTitle1Style,
                            )
                          ],
                        )),
                    ExploreCourseList(),
                  ],
                ),
              ),
            ),
          ),
          ContinueWatchingScreen(),
          IgnorePointer(
            ignoring: sidebarHidding,
            child: Stack(
              children: [
                FadeTransition(
                  opacity: fadeAnimation,
                  child: GestureDetector(
                    child: Container(
                      color: Color.fromRGBO(36, 38, 41, 0.4),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                    ),
                    onTap: () {
                      setState(() {
                        sidebarHidding = !sidebarHidding;
                      });
                      sideBarAnimationController.reverse();
                    },
                  ),
                ),
                SlideTransition(
                  position: sideBarAnimation,
                  child: SafeArea(
                    child: SideBarScreen(),
                    bottom: false,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
