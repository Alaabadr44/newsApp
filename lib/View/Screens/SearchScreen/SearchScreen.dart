import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/normalColors.dart';

class SearchScreen extends StatelessWidget {
  final List<String> options = ["رياضة", "فن", "صحه", "تكنولوجيا"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.h),
          SearchField(),
          SizedBox(height: 90.h),
          Container(
            height: 70.h,
            width: double.infinity,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: options.length,
              itemBuilder: (BuildContext context, int index) {
                return OptionWidget(
                  option: options[index],
                  length: options.length,
                  onOptionTab: null,
                  optionFocus: index == 3,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  const OptionWidget({
    Key? key,
    required this.option,
    required this.length,
    required this.onOptionTab,
    this.optionFocus = false,
  }) : super(key: key);
  final String option;
  final int length;
  final Void Function()? onOptionTab;
  final bool optionFocus;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onOptionTab,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            option,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w700,
                  color: black,
                  height: 1.2.h,
                ),
          ),
          SizedBox(height: 10.h),
          Container(
            height: 2,
            color: optionFocus ? black : Color(0xffb7b7b6),
            width: MediaQuery.of(context).size.width / length,
          )
        ],
      ),
    );
  }
}

/*


          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(options[0]),
                  Container(
                    height: 2,
                    color: black,
                    width: MediaQuery.of(context).size.width / options.length,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(options[0]),
                  Container(
                    height: 2,
                    color: black,
                    width: MediaQuery.of(context).size.width / options.length,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(options[0]),
                  Container(
                    height: 2,
                    color: black,
                    width: MediaQuery.of(context).size.width / options.length,
                  )
                ],
              ),
            ],
          )


 */

class SearchField extends StatefulWidget {
  SearchField({
    Key? key,
  }) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final border = OutlineInputBorder(
    // gapPadding: 10,
    borderRadius: BorderRadius.circular(25.r),
    borderSide: BorderSide(
      color: Color(0xfff5f4f4),
      width: 2,
    ),
  );

  TextEditingController? searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: TextField(
        decoration: InputDecoration(
          fillColor: Color(0xfff5f4f4),
          filled: true,
          border: border,
          enabledBorder: border,
          focusedBorder: border,
          contentPadding: EdgeInsets.all(20),
          prefixIcon: Padding(
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.search,
            ),
          ),
          hintText: "بحث",
          hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Color(0xffb7b6b7),
                fontSize: 36.sp,
                fontWeight: FontWeight.w700,
                // height: 1.2.h,
              ),
        ),
        controller: searchController,
        onChanged: (String searchValue) {},
        onSubmitted: (String searchValue) {},
      ),
    );
  }
}
