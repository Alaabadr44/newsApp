import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/normalColors.dart';

// ignore: must_be_immutable
class HomePageBottomNavBar extends StatefulWidget {
  HomePageBottomNavBar({
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  int? currentIndex;

  @override
  _HomePageBottomNavBarState createState() => _HomePageBottomNavBarState();
}

class _HomePageBottomNavBarState extends State<HomePageBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      currentIndex: widget.currentIndex ?? 0,
      items: [
        BottomNavigationBarItem(
          label: "",
          tooltip: "Home",
          icon: Icon(
            Icons.home_outlined,
            size: 70.h,
          ),
          activeIcon: Icon(
            Icons.home,
            size: 70.h,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          tooltip: "search",
          icon: Icon(
            Icons.search,
            size: 70.h,
          ),
          activeIcon: Icon(
            Icons.search_outlined,
            size: 70.h,
            color: black,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          tooltip: "bookmark",
          icon: Icon(
            Icons.bookmark_border,
            size: 70.h,
          ),
          activeIcon: Icon(
            Icons.bookmark,
            size: 70.h,
          ),
        ),
      ],
      onTap: (x) {
        setState(() {
          widget.currentIndex = x;
        });
      },
      selectedItemColor: black,
      showSelectedLabels: true,
      backgroundColor: white,
    );
  }
}
