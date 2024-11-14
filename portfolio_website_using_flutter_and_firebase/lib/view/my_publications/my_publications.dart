import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/utils/export.dart';

class MyPublications extends StatefulWidget {
  const MyPublications({super.key});

  @override
  State<MyPublications> createState() => _MyPublicationsState();
}

class _MyPublicationsState extends State<MyPublications> {
  List<Map<String, String>> journals = [
    {
      "topic":
          "AI-Powered Healthcare: Predictive Models for Early Diagnosis and Risk Management.",
      "supervisor": "Hasan, T. R., Alam, S. K., Rahman, F. H., & Khan, N. A."
    },
    {
      "topic":
          "Social Media Influence on Academic Performance: A Quantitative Study on University Students.",
      "supervisor": "Ahmed, M. S., Kabir, T. J., Rahman, M. N., & Islam, K. S."
    },
    {
      "topic":
          "The Role of Big Data in Personalized Learning: A Systematic Review.",
      "supervisor": "Bashir, S., Rahman, T. S., Aziz, F. A., & Karim, M. S."
    },
  ];

  List<Map<String, String>> conference = [
    {
      "topic":
          "Green Urbanization: IoT Solutions for Smart Waste Management and Resource Allocation.",
      "supervisor": "Rahman, T. H., Nahar, F. S., Ali, A. M., & Saif, R. J."
    },
    {
      "topic":
          "Blockchain in Healthcare: A Secure Framework for Patient Data Management.",
      "supervisor": "Khan, R. H., Alam, S. J., Hasan, T. F., & Zaman, A. K."
    },
    {
      "topic":
          "EcoTransport: An AI-Based Solution for Optimized Urban Transport Routing.",
      "supervisor": "Rashid, A. H., Karim, F. M., Nabil, S. K., & Ali, J. S."
    },
    {
      "topic":
          "Educational Impact of Virtual Reality on Science Learning in High School Students.",
      "supervisor": "Ahmed, S. K., Bashir, M. A., Rahman, H. N., & Islam, R. A."
    },
    {
      "topic":
          "Advanced Cybersecurity in Financial Services: An AI-Based Threat Detection Model.",
      "supervisor": "Zaman, M. R., Rahman, T. S., Islam, J. F., & Bashir, M. L."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0.h,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "My ",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22.sp,
                      fontFamily: "Lufga"),
                  children: [
                    TextSpan(
                      text: "Publications",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22.sp,
                          fontFamily: "Lufga",
                          color: WebColors.themeColor),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0.5.h),
            Center(
              child: Text(
                "What I Research (Used For Development purpose)",
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontFamily: "Lufga",
                ),
              ),
            ),
            Text(
              "Journal(s)",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            Container(
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: journals.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${index + 1}. ${journals[index]["topic"]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                              color: Colors.black),
                        ),
                        Text(
                          journals[index]["supervisor"]!,
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                      ],
                    );
                  },
                ),
              ),
            ),
            Text(
              "Conference(s)",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: Colors.black),
            ),
            Container(
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: conference.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${index + 1}. ${conference[index]["topic"]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                              color: Colors.black),
                        ),
                        Text(
                          conference[index]["supervisor"]!,
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
