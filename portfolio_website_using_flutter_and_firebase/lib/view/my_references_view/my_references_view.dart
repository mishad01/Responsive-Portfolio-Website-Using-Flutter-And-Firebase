import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/utils/export.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/my_references_view/reference_card.dart';

class MyReferencesView extends StatefulWidget {
  const MyReferencesView({super.key});

  @override
  State<MyReferencesView> createState() => _MyReferencesViewState();
}

class _MyReferencesViewState extends State<MyReferencesView> {
  @override
  List<Map<String, String>> refrences = [
    {
      "image": AssetsPath.head,
      "title": "Akib Rahman ",
      "pos": "Professor, CSE",
      "inst": "East Delta University",
    },
    {
      "image": AssetsPath.head,
      "title": "Alex ",
      "pos": "Senior Software Engineer",
      "inst": "Mavericks Software",
    },
    {
      "image": AssetsPath.head,
      "title": "Hina Dutta ",
      "pos": "Professor, CSE",
      "inst": "East Delta University",
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
                  fontSize: 22.sp,
                  fontFamily: "Lufga"),
              children: [
                TextSpan(
                  text: "References",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.sp,
                      fontFamily: "Lufga",
                      color: WebColors.themeColor),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              viewportFraction: 0.33,
              enableInfiniteScroll: true,
              initialPage: 0,
            ),
            items: refrences.map((item) {
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
                        child: ReferenceCard(isHovered: isHovered, item: item),
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
