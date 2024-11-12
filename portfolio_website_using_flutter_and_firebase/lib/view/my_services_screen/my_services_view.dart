import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/my_services_screen/widgets/scrollable_grid.dart';
import 'package:sizer/sizer.dart';

class MyServicesView extends StatefulWidget {
  const MyServicesView({
    super.key,
  });

  @override
  State<MyServicesView> createState() => _MyServicesViewState();
}

class _MyServicesViewState extends State<MyServicesView> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 122.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage(AssetsPath.serviceBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: 2.w, right: 2.w, top: 5.h, bottom: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                    width: 20.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "My ",
                              style: TextStyle(
                                  fontFamily: "Lufga",
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            TextSpan(
                              text: "Projects",
                              style: TextStyle(
                                  fontFamily: "Lufga",
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.w600,
                                  color: WebColors.themeColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4.w),
                Text(
                  "Slide Up Images",
                  style: TextStyle(
                      fontFamily: "Lufga",
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(width: 1.w),
                /*Container(
                  color: Colors.yellow,
                  child: Text(
                    "Welcome to my project showcase!\n Here, you'll find a selection of my work spanning various fields,\nincluding mobile app development, web applications, and data science.",
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ),*/
                /*Container(
                  width: 35.w,
                  height: 20.h,
                  color: Colors.yellow,
                  child: Text(
                    "Here, you'll find a selection of my work spanning various fields,\nMobile app development, Web applications, and ML",
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 13.sp),
                  ),
                ),*/
                Container(
                  width: 35.w,
                  child: Center(
                    child: Text(
                      "Here, you'll find a selection of my work spanning various fields,\nMobile app development, Web applications, and ML",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 13.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.h),
          //ProjectSliderWidget(selectedIndex: _selectedIndex)
          ScrollableGrid(),
        ],
      ),
    );
  }
}
