import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/portfolio_view/portfolio_website.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (p0, p1, p2) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: buildThemeData(),
          home: PortfolioWebsite(),
        );
      },
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      textTheme: GoogleFonts.urbanistTextTheme().apply(
        bodyColor: Colors.white,
      ),
    );
  }
}
