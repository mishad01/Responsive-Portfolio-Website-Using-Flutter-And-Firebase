import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/nav_titles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
            child: Container(
              width: 1968,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < navTitles.length; i++)
                    TextButton(
                      onPressed: () {},
                      child: Text(navTitles[i],
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Lufga",
                              color: Colors.white)),
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
