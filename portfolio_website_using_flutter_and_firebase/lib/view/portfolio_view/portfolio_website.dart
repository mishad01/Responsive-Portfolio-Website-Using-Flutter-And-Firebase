import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/utils/export.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/copyright_view.dart/copyright_view.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class PortfolioWebsite extends StatefulWidget {
  const PortfolioWebsite({super.key});

  @override
  State<PortfolioWebsite> createState() => _PortfolioWebsiteState();
}

class _PortfolioWebsiteState extends State<PortfolioWebsite> {
  late ScrollController _scrollController;

  // Global keys for each section
  final GlobalKey _detailsKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _workExperienceKey = GlobalKey();
  final GlobalKey _educationKey = GlobalKey();
  final GlobalKey _expertiseKey = GlobalKey();
  final GlobalKey _publicationsKey = GlobalKey();
  final GlobalKey _referencesKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  void _scrollToSection(int index) {
    final key = [
      _detailsKey,
      _servicesKey,
      _workExperienceKey,
      _educationKey,
      _expertiseKey,
      _publicationsKey,
      _referencesKey,
      _contactKey
    ][index];

    // Scroll to the selected section
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: HeaderDesktop(
                  onNavItemClicked: _scrollToSection,
                ),
              ),
              Container(key: _detailsKey, child: DetailsScreenView2()),
              Container(key: _servicesKey, child: MyServicesView()),
              Container(key: _workExperienceKey, child: WorkExperienceView()),
              Container(key: _educationKey, child: EducationScreenView()),
              Container(key: _expertiseKey, child: MyExpertiseView()),
              Container(key: _publicationsKey, child: MyPublications()),
              Container(key: _referencesKey, child: MyReferencesView()),
              Container(key: _contactKey, child: ContactMeView()),
              CopyrightView(),
            ],
          ),
        ),
      ),
    );
  }
}
