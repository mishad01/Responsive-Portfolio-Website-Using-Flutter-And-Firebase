import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';

class DetailsScreenView extends StatelessWidget {
  const DetailsScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1440,
      height: 2000,
      child: Stack(
        children: [
          //Hello
          Positioned(
            bottom: 1200,
            left: 1,
            right: 1,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 45,
                    width: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    child: Center(
                      child: Text("Hello!",
                          style: TextStyle(
                              fontFamily: "Lufga", color: Colors.black)),
                    ),
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "I'm ",
                              style: GoogleFonts.urbanist(
                                  fontSize: 95.57,
                                  fontWeight: FontWeight.w600,
                                  height: 1),
                            ),
                            TextSpan(
                              text: "Mishad,",
                              style: GoogleFonts.urbanist(
                                  fontSize: 95.57,
                                  fontWeight: FontWeight.w600,
                                  color: WebColors.themeColor,
                                  height: 1),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Software ",
                              style: GoogleFonts.urbanist(
                                fontSize: 95.57,
                                fontWeight: FontWeight.w600,
                                height: 1,
                              ),
                            ),
                            TextSpan(
                              text: "Engineer",
                              style: GoogleFonts.urbanist(
                                  fontSize: 95.57,
                                  fontWeight: FontWeight.w600,
                                  height: 1),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  SizedBox(height: 70),
                  SvgPicture.asset(
                    AssetsPath.bg1,
                  ),
                ],
              ),
            ),
          ),
          //person
          Positioned(
            bottom: 1200,
            left: 1,
            right: 1,
            child: Center(
              child: Image.asset(
                AssetsPath.person,
                width: 752,
                height: 636,
              ),
            ),
          ),
          //v2
          Positioned(
            bottom: 1650,
            left: 260,
            //right: 910,
            child: Center(child: SvgPicture.asset(AssetsPath.v2)),
          ),
          //v1
          Positioned(
            bottom: 1930,
            left: 128,
            right: 1,
            child: Center(child: SvgPicture.asset(AssetsPath.v1)),
          ),
          //Jenny’s
          Positioned(
            bottom: 1480,
            left: 70,
            // right: 910,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AssetsPath.d3),
                SizedBox(height: 20),
                Text(
                  "Jenny’s Exceptional product design\nensure our website’s success.\nHighly Recommended",
                  style: TextStyle(
                    fontFamily: "Lufga",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
          //10 years
          Positioned(
            bottom: 1480,
            right: 70,
            // right: 910,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset(AssetsPath.star),
                Text(
                  "10 Years",
                  style: GoogleFonts.urbanist(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 47,
                  ),
                ),
                Text(
                  "Experience",
                  style: GoogleFonts.urbanist(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          /*Positioned(
            top: 720,
            left: 1,
            right: 1,
            child: Container(
              width: 1440,
              height: 878,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage(AssetsPath.serviceBg),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "My ",
                                style: TextStyle(
                                    fontFamily: "Lufga",
                                    fontSize: 48,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              TextSpan(
                                text: "Services",
                                style: TextStyle(
                                    fontFamily: "Lufga",
                                    fontSize: 48,
                                    fontWeight: FontWeight.w600,
                                    color: WebColors.themeColor),
                              ),
                            ],
                          ),
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nDuis lacus nunc, posuere in justo vulputate, bibendum sodales ")
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, top: 40),
                    child: SizedBox(
                      height:
                          200, // Adjust the height according to your image size
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5, // Number of images to display
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10), // Space between images
                            child: SvgPicture.asset(AssetsPath.glassFrame),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )*/
        ],
      ),
    );
  }
}

class GlassWidget extends StatelessWidget {
  const GlassWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 416,
      height: 508,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.white.withOpacity(0.5))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 15.0),
          child: Container(
            alignment: Alignment.center,
            color: Colors.grey
                .withOpacity(0.1), // Adjust opacity to enhance effect
            child: Text(
              'Glass Effect',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
