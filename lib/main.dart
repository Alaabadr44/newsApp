import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/Screens/SplashScreen/SplashScreen.dart';
import 'helper/function.dart';

void main() {
  // this for hide status bar icon on the top
  hideStatusBar();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this for make layout responsive
    return ScreenUtilInit(
      designSize: Size(720, 1280),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          textTheme: TextTheme(
            //To support the following, you need to use the first initialization method
            button: GoogleFonts.tajawal(fontSize: 45.sp),
            bodyText1: GoogleFonts.tajawal(),
          ),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
