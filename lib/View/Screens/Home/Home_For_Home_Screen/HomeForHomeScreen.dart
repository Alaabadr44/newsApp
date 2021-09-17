import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/Model/News_Model.dart';

import 'widgets/body.dart';

// ignore: must_be_immutable
class HomePageScreenBody extends StatelessWidget {
  final List<News> newsUi;
  const HomePageScreenBody({
    Key? key,
    required this.newsUi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomePageHeadBanaras(
          imageSrc: newsUi[0].imageSrc!,
          otherPress: () {},
          newHead: newsUi[0].headline,
        ),
        SizedBox(height: 10.h),
        HomePageRow(othersNewsPress: () {}),
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: newsUi.length - 2,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 2.w,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              index = index + 1;
              return HomePageNewItem(
                imageSrc: newsUi[index].imageSrc!,
                newTime: newsUi[index].date,
                newSubject: newsUi[index].headline,
                newWebsite: newsUi[index].source,
              );
            },
          ),
        ),
      ],
    );
  }
}
