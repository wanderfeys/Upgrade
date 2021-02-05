import 'package:courseApp/components/sideBarComponents/side_bar_item.dart';
import 'package:courseApp/components/sideBarComponents/side_bar_row.dart';
import 'package:courseApp/constants.dart';
import 'package:flutter/material.dart';

class SideBarScreen extends StatefulWidget {
  @override
  _SideBarScreenState createState() => _SideBarScreenState();
}

class _SideBarScreenState extends State<SideBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 35.0),
      decoration: BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(34.0))),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.png'),
                  radius: 31.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Wanderfeys", style: kHeadlineLabelStyle),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "License ends on 21 Jan. 2021",
                      style: kSearchPlaceholderStyle,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SideBarRow(
              item: sideBarItem[0],
            ),
            SizedBox(
              height: 32.0,
            ),
            SideBarRow(
              item: sideBarItem[1],
            ),
            SizedBox(
              height: 32.0,
            ),
            SideBarRow(
              item: sideBarItem[2],
            ),
            SizedBox(
              height: 32.0,
            ),
            SideBarRow(
              item: sideBarItem[3],
            ),
            SizedBox(
              height: 32.0,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("asset/icons/icon-logout.png", width: 17.0),
                SizedBox(
                  width: 14.0,
                ),
                Text(
                  "Log out",
                  style: kSecondaryCalloutLabelStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
