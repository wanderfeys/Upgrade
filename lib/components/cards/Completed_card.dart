import 'package:courseApp/model/course.dart';
import 'package:courseApp/constants.dart';
import 'package:flutter/material.dart';

class CompletedCoursesCard extends StatelessWidget {
  CompletedCoursesCard({this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(alignment: Alignment.topRight, children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, right: 20.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: course.background,
              borderRadius: BorderRadius.circular(41.0),
              boxShadow: [
                BoxShadow(
                    color: course.background.colors[0].withOpacity(0.3),
                    offset: Offset(0, 20),
                    blurRadius: 20.0),
                BoxShadow(
                    color: course.background.colors[1].withOpacity(0.3),
                    offset: Offset(0, 20),
                    blurRadius: 20.0)
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(41.0),
              child: Container(
                height: 140.0,
                width: 260.0,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'asset/illustrations/${course.illustration}',
                              fit: BoxFit.cover,
                              height: 140.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(31.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(course.courseSubtitle, style: kSubtitleStyle),
                          SizedBox(height: 6.0),
                          Text(
                            course.courseTitle,
                            style: kCardTitleStyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Image.asset(
            'asset/icons/icon-play.png',
          ),
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 4),
                  blurRadius: 16.0,
                ),
              ]),
          padding: EdgeInsets.only(
            top: 12.5,
            bottom: 13.0,
            left: 20.5,
            right: 14.5,
          ),
        ),
      ]),
    );
  }
}
