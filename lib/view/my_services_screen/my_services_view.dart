import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/my_services_screen/widgets/scrollable_grid.dart';

class MyServicesView extends StatefulWidget {
  const MyServicesView({
    super.key,
  });

  @override
  State<MyServicesView> createState() => _MyServicesViewState();
}

class _MyServicesViewState extends State<MyServicesView> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 878,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage(AssetsPath.serviceBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 150, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "My ",
                            style: TextStyle(
                                fontFamily: "Lufga",
                                fontSize: 48,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: "Projects",
                            style: TextStyle(
                                fontFamily: "Lufga",
                                fontSize: 48,
                                fontWeight: FontWeight.w600,
                                color: WebColors.themeColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "Scroll Up ",
                  style: TextStyle(
                      fontFamily: "Lufga",
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nDuis lacus nunc, posuere in justo vulputate, bibendum sodales ")
              ],
            ),
          ),
          SizedBox(height: 10),
          //ProjectSliderWidget(selectedIndex: _selectedIndex)
          ScrollableGrid(),
        ],
      ),
    );
  }
}
