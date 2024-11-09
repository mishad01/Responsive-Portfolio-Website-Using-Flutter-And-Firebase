import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Container(
      width: 1440,
      height: 600,
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
            width: 1298,
            height: 438,
            child: Stack(
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
          )
        ],
      ),
    );
  }
}
