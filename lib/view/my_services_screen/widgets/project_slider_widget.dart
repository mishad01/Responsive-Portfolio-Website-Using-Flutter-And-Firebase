import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';

class ProjectSliderWidget extends StatelessWidget {
  const ProjectSliderWidget({
    super.key,
    required ValueNotifier<int> selectedIndex,
  }) : _selectedIndex = selectedIndex;

  final ValueNotifier<int> _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 416.0, viewportFraction: 0.30, aspectRatio: 3),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  //decoration: BoxDecoration(color: Colors.amber),
                  //child: SvgPicture.asset(AssetsPath.glassFrame),
                  child: Container(
                    width: 416,
                    height: 508,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Text(
                              "App Design",
                              style: TextStyle(
                                  fontFamily: "Lufga",
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SvgPicture.asset(
                            AssetsPath.glassFrame,
                            height: 416,
                            width: 508,
                          ),
                          Positioned(
                            top: 170,
                            left: 5,
                            right: 5,
                            child: Container(
                              width: 338,
                              height: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(AssetsPath.pr1)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 50),
        ValueListenableBuilder(
          valueListenable: ValueNotifier(_selectedIndex),
          builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    height: 15,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    margin: EdgeInsets.only(right: 8),
                  )
              ],
            );
          },
        )
      ],
    );
  }
}
