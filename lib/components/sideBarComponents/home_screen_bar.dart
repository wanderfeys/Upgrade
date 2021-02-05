import 'package:courseApp/components/sideBarComponents/search_field_widget.dart';
import 'package:courseApp/components/sideBarComponents/side_bar_button.dart';
import 'package:courseApp/constants.dart';
import 'package:courseApp/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenNavBAr extends StatelessWidget {
  HomeScreenNavBAr({@required this.triggerAnimation});

  final Function triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SideBarButton(
            triggerAnimation: triggerAnimation,
          ),
          SearchFiledWidget(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          SizedBox(
            width: 16.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('asset/images/profile.png'),
            ),
          )
        ],
      ),
    );
  }
}
