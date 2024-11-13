import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/work_experience_view/widgets/experience_widget.dart';
import 'package:sizer/sizer.dart';

class WorkExperienceView extends StatefulWidget {
  const WorkExperienceView({super.key});

  @override
  State<WorkExperienceView> createState() => _WorkExperienceViewState();
}

class _WorkExperienceViewState extends State<WorkExperienceView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144.w,
      height: 107.h,
      child: Column(
        children: [
          SizedBox(height: 3.h),
          RichText(
            text: TextSpan(
              text: "My ",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22.sp,
                  fontFamily: "Lufga"),
              children: [
                TextSpan(
                  text: "Work Experiences",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.sp,
                      fontFamily: "Lufga",
                      color: WebColors.themeColor),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.h),
          Container(
            height: 90.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3.w, right: 3.w),
                      child: Wrap(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ExperienceWidget(
                                place: "Maverick Softwares™️ ",
                                date: "Jan- July 2024",
                                profession: "Software Developer",
                                details:
                                    "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nDuis lacus nunc,\nposuere in justo vulputate,\nbibendum sodales ",
                              ),
                              ExperienceWidget(
                                place: "Geosi IT",
                                date: "Aug - Oct 2024",
                                profession: "App Developer",
                                details:
                                    "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nDuis lacus nunc,\nposuere in justo vulputate,\nbibendum sodales ",
                              ),
                              ExperienceWidget(
                                place: "Freelance",
                                date: "Sep 2020- January 2022",
                                profession: "Social Media Manager",
                                details:
                                    "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\nDuis lacus nunc,\nposuere in justo vulputate,\nbibendum sodales ",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned.fill(
                      child: SvgPicture.asset(
                        AssetsPath.experienceDivider,
                        fit: BoxFit
                            .contain, // Adjusts the SVG to fill the space dynamically
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "I'm currently looking to join a ",
                    style: GoogleFonts.preahvihear(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: "cross-functional team",
                        style: GoogleFonts.preahvihear(
                          color: Color(0xff693B93),
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                        ),
                      ),
                      TextSpan(
                        text:
                            "\nthat values improving people's lives through accessible design ",
                        style: GoogleFonts.preahvihear(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: 40.w,
                  height: 20.h,
                  child: Image.asset(
                    AssetsPath.languageLogo,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
