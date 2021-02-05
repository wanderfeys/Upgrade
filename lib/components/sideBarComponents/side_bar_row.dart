import 'package:courseApp/constants.dart';
import 'package:flutter/material.dart';

import 'side_bar_item.dart';

class SideBarRow extends StatelessWidget {
  SideBarRow({@required this.item});
  final SideBarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            width: 42.0,
            height: 42.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              gradient: item.background,
            ),
            child: item.icon),
        SizedBox(
          width: 12.0,
        ),
        Container(
            child: Text(
          item.title,
          style: kCalloutLabelStyle,
        ))
      ],
    );
  }
}
