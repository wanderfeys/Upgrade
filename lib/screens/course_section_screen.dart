import 'package:courseApp/components/Lists/course_section_list.dart';
import 'package:courseApp/constants.dart';
import 'package:flutter/material.dart';

class CourseSectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(32.0),
            decoration: BoxDecoration(
              color: kCardPopupBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34.0),
                bottomLeft: Radius.circular(34.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 12),
                  blurRadius: 32.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Course Sections",
                  style: kTitle2Style,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text('12 section', style: kSubtitleStyle)
              ],
            ),
          ),
          CourseSectionList(),
          SizedBox(
            height: 32.0,
          )
        ],
      ),
    );
  }
}
