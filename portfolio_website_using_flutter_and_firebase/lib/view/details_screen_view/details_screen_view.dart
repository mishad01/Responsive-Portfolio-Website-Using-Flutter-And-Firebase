import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';
import 'package:sizer/sizer.dart';

class DetailsScreenView extends StatefulWidget {
  const DetailsScreenView({
    super.key,
  });

  @override
  State<DetailsScreenView> createState() => _DetailsScreenViewState();
}

class _DetailsScreenViewState extends State<DetailsScreenView> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1440,
      height: 746,
      child: Stack(
        children: [
          //Hello
          Positioned(
            top: 40,
            left: 1,
            right: 1,
            child: Center(
              child: Column(
                children: [
                  isHover
                      ? Container()
                      : Container(
                          height: 45,
                          width: 103,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: Center(
                            child: Text("Hello!",
                                style: TextStyle(
                                  fontFamily: "Lufga",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                )),
                          ),
                        ),
                  SizedBox(height: 15),
                  isHover
                      ? Container()
                      : Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I'm ",
                                    style: GoogleFonts.urbanist(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w600,
                                        height: 1),
                                  ),
                                  TextSpan(
                                    text: "Mishad,",
                                    style: GoogleFonts.urbanist(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w600,
                                        color: WebColors.themeColor,
                                        height: 1),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      "Software Engineer",
                                      style: GoogleFonts.urbanist(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w600,
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 17.w),
                                    child: SvgPicture.asset(
                                      AssetsPath.v2,
                                      width: 4.4.w,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                  SizedBox(height: isHover ? 352 : 115),
                  SvgPicture.asset(AssetsPath.bg1),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 250), // Adjust duration as needed
            curve: Curves.easeInOut, // Customize the animation curve
            top: isHover
                ? 100
                : MediaQuery.of(context).size.height, // Start from bottom
            left: 1,
            right: 50,
            child: SvgPicture.asset(AssetsPath.v3),
          ),
          //person
          Positioned(
            top: 182,
            left: 1,
            right: 1,
            child: Center(
              child: Image.asset(
                AssetsPath.mishad,
                width: 752,
                height: 636,
              ),
            ),
          ),
          //v2
          /*isHover
              ? Container()
              : Positioned(
                  bottom: 20,
                  left: 1,
                  right: 928,
                  top: 1,
                  child: Center(child: SvgPicture.asset(AssetsPath.v2)),
                ),*/
          //v1
          isHover
              ? Container()
              : Positioned(
                  top: 20,
                  left: 128,
                  right: 1,
                  child: Center(child: SvgPicture.asset(AssetsPath.v1)),
                ),
          //Jenny’s
          AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            top: isHover ? 200 : 400,
            left: 70,
            curve: Curves.easeInOut,
            // right: 910,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AssetsPath.d3),
                SizedBox(height: 13.sp),
                Text(
                  "Jenny’s Exceptional product design\nensure our website’s success.\nHighly Recommended",
                  style: TextStyle(
                    fontFamily: "Lufga",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
          //10 years
          AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            top: isHover ? 200 : 400,
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
                    fontSize: 20.sp,
                  ),
                ),
                Text(
                  "Experience",
                  style: GoogleFonts.urbanist(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 400,
            left: 1,
            right: 1,
            child: MouseRegion(
              onEnter: (event) {
                setState(() => isHover = true);
              },
              onExit: (event) {
                setState(() => isHover = false);
              },
              child: Container(
                height: 400,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
