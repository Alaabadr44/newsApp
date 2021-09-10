import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/normalColors.dart';
import '../../widgets/loadingwidgets.dart';
import 'widgets/homeginral.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: white,
        // body: SearchScreen(),
        // body: HomePageScreenBody(),
        // body: HomePageLoading(),
        body: HomePageError(),
        bottomNavigationBar: HomePageBottomNavBar(
          currentIndex: 0,
        ),
      ),
    );
  }
}

class HomePageLoading extends StatelessWidget {
  const HomePageLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    Color shimmerColor = Color(0xffb1b2b5);
    Color secondShimmerColor = Colors.grey[300]!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // banars widget with shimmer 
        Stack(
          children: [
            ShimmerWidget(
              baseColor: shimmerColor,
              highlightColor: secondShimmerColor,
              hight: 583.h,
              width: double.infinity,
              shapeBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80.r),
                  bottomRight: Radius.circular(80.r),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 230.h),
                  ShimmerWidget.rectangular(
                    hight: 16.h,
                    width: _width / 3 * 2,
                    baseColor: white,
                    highlightColor: white,
                  ),
                  SizedBox(height: 60.h),
                  ShimmerWidget.rectangular(
                    hight: 16.h,
                    width: _width / 3 * 1.5,
                    baseColor: white,
                    highlightColor: white,
                  ),
                  SizedBox(height: 60.h),
                  ShimmerWidget.rectangular(
                    hight: 16.h,
                    width: _width / 3 * 2,
                    baseColor: white,
                    highlightColor: white,
                  ),
                  SizedBox(height: 80.h),
                  ShimmerWidget.rectangular(
                    hight: 16.h,
                    width: _width / 3 * 0.5,
                    baseColor: white,
                    highlightColor: white,
                  ),
                ],
              ),
            )
          ],
        ),
       //
       
       
       
       
        SizedBox(height: 120.h),
      
      
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 20.w,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 331.h,
                width: 383.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerWidget(
                      hight: 223.h,
                      baseColor: shimmerColor,
                      highlightColor: secondShimmerColor,
                      width: 383.w,
                      shapeBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    ShimmerWidget.rectangular(
                      hight: 10.h,
                      baseColor: shimmerColor,
                      highlightColor: secondShimmerColor,
                      width: _width / 3 * 0.80,
                    ),
                    SizedBox(height: 20.h),
                    ShimmerWidget.rectangular(
                      hight: 10.h,
                      baseColor: shimmerColor,
                      highlightColor: secondShimmerColor,
                      width: _width / 3 * 1.1,
                    ),
                    SizedBox(height: 20.h),
                    ShimmerWidget.rectangular(
                      hight: 10.h,
                      baseColor: shimmerColor,
                      highlightColor: secondShimmerColor,
                      width: _width / 3 * 0.60,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}




















class HomePageError extends StatelessWidget {
  const HomePageError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70.h,
            width: 287.w,
            decoration: ShapeDecoration(
              color: white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(
                  color: Color(0xffb7b7b6),
                  width: 1.w,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "هناك خطأ",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.normal,
                        height: 1.2.h,
                        color: Color(0xffb7b7b6),
                      ),
                ),
                Icon(Icons.close, size: 30),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.refresh, color: black, size: 40),
            ),
          )
        ],
      ),
    );
  }
}
