import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/education_screen_view/widgets/institution_card.dart';

class EducationScreenView extends StatefulWidget {
  const EducationScreenView({super.key});

  @override
  State<EducationScreenView> createState() => _EducationScreenViewState();
}

class _EducationScreenViewState extends State<EducationScreenView> {
  List<Map<String, String>> institution = [
    {
      "image": AssetsPath.college,
      "title": "Higher Secondary",
      "gpa": "GPA: 5.00 out of 5.00 (Science)",
      "inst": "Bangladesh Navy College, Chattogram",
    },
    {
      "image": AssetsPath.university,
      "title": "Bachelor in Science ",
      "gpa": "Deans List",
      "inst": "Computer Science & Engineering \n East Delta University",
    },
    {
      "image": AssetsPath.school,
      "title": "Secondary",
      "gpa": "GPA: 5.00 out of 5.00 (Science)",
      "inst": "Nasirabad Government High School",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: "My ",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 64,
                  fontFamily: "Lufga"),
              children: [
                TextSpan(
                  text: "Education",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 64,
                      fontFamily: "Lufga",
                      color: WebColors.themeColor),
                ),
              ],
            ),
          ),
          Text(
            "What did I study",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontFamily: "Lufga",
            ),
          ),
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
                height: 400.0,
                viewportFraction: 0.33,
                enableInfiniteScroll: true,
                initialPage: 0,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 1)),
            items: institution.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  bool isHovered = false;
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return MouseRegion(
                        onEnter: (event) {
                          setState(() => isHovered = true);
                        },
                        onExit: (event) {
                          setState(() => isHovered = false);
                        },
                        child:
                            InstitutionCard(isHovered: isHovered, item: item),
                      );
                    },
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
