import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'body.dart';

class HomePageScreenBody extends StatelessWidget {
  const HomePageScreenBody({
    Key? key,
  }) : super(key: key);

  final String tryimgage =
      "https://images.beinsports.com/EcFZNJY8579FhTk5YJi4nwfbbP8=/full-fit-in/1000x0/ronaldo-cropped_1r634btzjoddx1aa49ghivwo7f.jpg";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomePageHeadBanaras(
          imageSrc: tryimgage,
          otherPress: () {},
          // newHead: , //!
        ),
        SizedBox(height: 10.h),
        HomePageRow(othersNewsPress: () {}),
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 2.w,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return HomePageNewItem(
                imageSrc: tryimgage,
                newTime: null,
                newSubject: null,
                newWebsite: null,
              );
            },
          ),
        ),
      ],
    );
  }
}
