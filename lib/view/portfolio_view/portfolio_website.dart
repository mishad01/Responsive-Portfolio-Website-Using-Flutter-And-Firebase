import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/details_screen_view/details_screen_view.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/portfolio_view/widget/drawer.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/portfolio_view/widget/header_desktop.dart';

class PortfolioWebsite extends StatefulWidget {
  const PortfolioWebsite({super.key});

  @override
  State<PortfolioWebsite> createState() => _PortfolioWebsiteState();
}

class _PortfolioWebsiteState extends State<PortfolioWebsite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: const Drawer(
        child: DrawerWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: HeaderDesktop(),
            ),
            // Details Screen View
            DetailsScreenView(),
          ],
        ),
      ),
    );
  }
}
