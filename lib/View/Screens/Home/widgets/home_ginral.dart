import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/normalColors.dart';

// ignore: must_be_immutable
class HomePageBottomNavBar extends StatelessWidget {
  HomePageBottomNavBar({
    required this.currentIndex,
    Key? key,
    required this.onTap,
  }) : super(key: key);

  late final int? currentIndex;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      currentIndex: currentIndex ?? 0,
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
      onTap: onTap,
      selectedItemColor: black,
      showSelectedLabels: true,
      backgroundColor: white,
    );
  }
}
