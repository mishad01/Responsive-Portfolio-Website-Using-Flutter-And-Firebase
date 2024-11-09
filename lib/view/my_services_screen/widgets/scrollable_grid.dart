import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.invertedStylus, PointerDeviceKind.mouse};
}

class ScrollableGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(), // Apply custom scroll behavior
      child: Container(
        width: double.infinity,
        height: 700, // Adjust the height as needed
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // Scroll vertically
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap:
                true, // Allow GridView to take only as much space as needed
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // Number of columns
              crossAxisSpacing: 8.0, // Space between columns
              mainAxisSpacing: 8.0, // Space between rows
              childAspectRatio: 1.0, // Aspect ratio of each item
            ),
            itemCount: 12, // Adjust number of items
            physics:
                NeverScrollableScrollPhysics(), // Disable GridView's internal scroll
            itemBuilder: (context, index) {
              return Center(
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 40,
                      child: Text(
                        "App Design",
                        style: TextStyle(
                            fontFamily: "Lufga",
                            fontSize: 32,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      width: 308,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white),
                      ),
                      child: SvgPicture.asset(
                        AssetsPath.glassFrame,
                        height: 416,
                        width: 508,
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 20,
                      right: 20,
                      bottom: 5,
                      child: Container(
                        width: 120,
                        height: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(AssetsPath.pr1),
                              fit: BoxFit.contain),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
