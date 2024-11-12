import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/utils/utils.dart';
import 'package:sizer/sizer.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.invertedStylus,
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch
      };
}

class ScrollableGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: Container(
        width: double.infinity,
        height: 100.h, // Adjusted for responsiveness
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 2.w), // Responsive padding
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Utils().getCrossCount(context),
                crossAxisSpacing: 2.w, // Responsive cross axis spacing
                mainAxisSpacing: 2.h, // Responsive main axis spacing
                childAspectRatio: 1.1,
              ),
              itemCount: 12,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    width: 50.w, // Responsive width
                    height: 55.h, // Responsive height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.w),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Coffee Shop App",
                          style: TextStyle(
                              fontSize: 16.sp, // Responsive font size
                              fontWeight: FontWeight.bold,
                              fontFamily: "Lufga"),
                        ),
                        Flexible(
                          child: Container(
                            width: 28.w, // Responsive width
                            height: 45.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: AssetImage(AssetsPath.pr1),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
