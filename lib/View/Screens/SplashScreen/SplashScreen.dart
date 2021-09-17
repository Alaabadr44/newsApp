import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/images.dart';
import '../../../constants/normalColors.dart';
import '../../../helper/function.dart';
import '../Home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => simpleGoEndTo(
        context,
        screenName: HomePage(),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Container(
          height: 400.h,
          width: 400.w,
          child: Image.asset(splashScreenImage),
        ),
      ),
    );
  }
}
