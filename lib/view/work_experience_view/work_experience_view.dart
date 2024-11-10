import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/work_experience_view/widgets/experience_widget.dart';

class WorkExperienceView extends StatefulWidget {
  const WorkExperienceView({super.key});

  @override
  State<WorkExperienceView> createState() => _WorkExperienceViewState();
}

class _WorkExperienceViewState extends State<WorkExperienceView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26, right: 26),
      child: Container(
        width: 1440,
        height: 900,
        child: Column(
          children: [
            SizedBox(height: 30),
            RichText(
              text: TextSpan(
                text: "My ",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 64,
                    fontFamily: "Lufga"),
                children: [
                  TextSpan(
                    text: "Work Experiences",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 64,
                        fontFamily: "Lufga",
                        color: WebColors.themeColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 738,
              child: Column(
                children: [
                  Stack(
                    children: [
                      const Column(
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
                      Positioned(
                        top: 10,
                        left: 1,
                        right: 1,
                        child: SvgPicture.asset(AssetsPath.experienceDivider),
                      ),
                    ],
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "I'm currently looking to join a ",
                      style: GoogleFonts.preahvihear(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: "cross-functional team",
                          style: GoogleFonts.preahvihear(
                            color: Color(0xff693B93),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:
                              "\nthat values improving people's lives through accessible design ",
                          style: GoogleFonts.preahvihear(
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 500,
                    height: 200,
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
      ),
    );
  }
}
