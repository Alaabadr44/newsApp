import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/normalColors.dart';

class HomePageHeadBanaras extends StatelessWidget {
  const HomePageHeadBanaras({
    Key? key,
    required this.imageSrc,
    this.newHead,
    required this.otherPress,
  }) : super(key: key);

  final String imageSrc;
  final String? newHead;
  final void Function()? otherPress;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.center,
      children: [
        HomePageHeadImage(imageSrc: imageSrc),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 230.h),
              Text(
                newHead!,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: white,
                      fontSize: 45.sp,
                      fontWeight: FontWeight.w800,
                      height: 1.3,
                    ),
                // textDirection: TextDirection.rtl,
                maxLines: 3,
                textScaleFactor: 1.3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10.h),
              TextButton(
                onPressed: otherPress,
                child: Text(
                  "المزيد...",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: white,
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w800,
                        height: 1.2,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomePageNewItem extends StatelessWidget {
  const HomePageNewItem({
    Key? key,
    required this.imageSrc,
    required this.newSubject,
    required this.newTime,
    required this.newWebsite,
  }) : super(key: key);

  final String imageSrc;
  final String? newSubject;
  final String? newTime;
  final String? newWebsite;

  @override
  Widget build(BuildContext context) {
    TextStyle simple = Theme.of(context).textTheme.bodyText1!.copyWith(
          color: Color(0xffb1b2b5),
          fontSize: 24.sp,
          fontWeight: FontWeight.w800,
        );
    return Container(
      height: 427.h,
      width: 383.w,
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 223.h,
            width: 383.w,
            child: Image.network(
              imageSrc,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Text(
                (newSubject ??
                    "مصدر من الزمالك لـ في الجول: مصطفى محمد تواصل مع الإدارة ..."),
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: black,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                    ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                // textDirection: TextDirection.rtl,
              ),
              SizedBox(height: 5.h),
              Text(
                (newTime ?? "منذ 2 ساعه"),
                style: simple,
              ),
              SizedBox(height: 2.h),
              Text(
                (newWebsite ?? "Filgoal.com"),
                style: simple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomePageRow extends StatelessWidget {
  final String? newNews;
  final String? othersNews;
  final void Function()? othersNewsPress;

  const HomePageRow({
    Key? key,
    this.newNews,
    this.othersNews,
    required this.othersNewsPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          (newNews ?? "اخر الأخبار"),
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 48.sp, fontWeight: FontWeight.w900, color: black),
        ),
        Spacer(),
        TextButton(
          onPressed: othersNewsPress,
          child: Text(
            (othersNews ?? "المزيد "),
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 36.sp, fontWeight: FontWeight.w800, color: black),
          ),
        ),
      ],
    );
  }
}

class HomePageHeadImage extends StatelessWidget {
  final String imageSrc;
  const HomePageHeadImage({
    Key? key,
    required this.imageSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 583.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            imageSrc,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80.r),
          bottomRight: Radius.circular(80.r),
        ),
      ),
    );
  }
}
