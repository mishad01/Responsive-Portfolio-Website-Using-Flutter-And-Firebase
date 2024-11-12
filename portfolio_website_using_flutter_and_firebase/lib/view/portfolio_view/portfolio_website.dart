import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/utils/export.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class PortfolioWebsite extends StatefulWidget {
  const PortfolioWebsite({super.key});

  @override
  State<PortfolioWebsite> createState() => _PortfolioWebsiteState();
}

class _PortfolioWebsiteState extends State<PortfolioWebsite> {
  late ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: const Drawer(
        child: DrawerWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: WebSmoothScroll(
          controller: _scrollController,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            controller: _scrollController,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: HeaderDesktop(),
              ),
              // Details Screen View
              DetailsScreenView(),
              MyServicesView(),
              WorkExperienceView(),
              EducationScreenView(),
              MyExpertiseView(),
              MyPublications(),
              MyReferencesView(),
              ContactMeView(),
            ],
          ),
        ),
      ),
    );
  }
}
