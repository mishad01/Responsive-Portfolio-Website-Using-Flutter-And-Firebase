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
      height: 846,
      child: Stack(
        children: [
          Positioned(
            bottom: 780,
            left: 128,
            right: 1,
            child: Center(child: SvgPicture.asset(AssetsPath.v1)),
          ),
          Positioned(
            bottom: 750,
            left: 1,
            right: 1,
            child: Center(
              child: Container(
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
                      style:
                          TextStyle(fontFamily: "Lufga", color: Colors.black)),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 500,
            left: 1,
            right: 1,
            child: Center(
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "I'm ",
                          style: GoogleFonts.urbanist(
                              fontSize: 95.57, fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: "Mishad,",
                          style: GoogleFonts.urbanist(
                              fontSize: 95.57,
                              fontWeight: FontWeight.w600,
                              color: WebColors.themeColor),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Software    ",
                          style: GoogleFonts.urbanist(
                              fontSize: 95.57, fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: "Engineer",
                          style: GoogleFonts.urbanist(
                              fontSize: 95.57, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 450,
            left: 220,
            //right: 910,
            child: Center(child: SvgPicture.asset(AssetsPath.v2)),
          ),
          Positioned(
            bottom: 310,
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
          Positioned(
            bottom: 50,
            left: 1,
            right: 1,
            child: Center(
              child: SvgPicture.asset(
                AssetsPath.bg1,
              ),
            ),
          ),
          Positioned(
            bottom: 310,
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
          Positioned(
            bottom: 50,
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
        ],
      ),
    );
  }
}
