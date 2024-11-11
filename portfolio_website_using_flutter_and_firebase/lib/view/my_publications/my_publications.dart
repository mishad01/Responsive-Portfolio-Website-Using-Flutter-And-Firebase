import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';

class MyPublications extends StatefulWidget {
  const MyPublications({super.key});

  @override
  State<MyPublications> createState() => _MyPublicationsState();
}

class _MyPublicationsState extends State<MyPublications> {
  List<Map<String, String>> journals = [
    {
      "topic":
          "Impact of COVID-19 on Mental Health: A Quantitative Analysis of Anxiety and Depression Based on Regular Life and Internet Use.",
      "supervisor": "Rahman, M. M., Ahmed, A., Mahin, M. F., & Shetu, S. F."
    },
    {
      "topic":
          "COVID-19 and Bangladesh: Situation Report, Comparative Analysis, and Case Study.",
      "supervisor":
          "Saifuzzaman, M., Rahman, M. M., Shetu, S. F., & Moon, N. N."
    },
    {
      "topic":
          "Impactful E-Learning Framework: A New Hybrid Form of Education.",
      "supervisor":
          "Shetu, S. F., Rahman, M. M., Ahmed, A., Mahin, M. F., Akib, M. A. U., & Saifuzzaman, M."
    },
  ];
  List<Map<String, String>> conference = [
    {
      "topic":
          "Future City of Bangladesh: IoT Based Autonomous Smart Sewerage and Hazard Condition Sharing System.",
      "supervisor": "Rahman, M. M., Ahmed, A., Mahin, M. F., & Shetu, S. F."
    },
    {
      "topic":
          "Deep Learning Model for Detecting and Diagnosing Plant Disease.",
      "supervisor":
          "Saifuzzaman, M., Rahman, M. M., Shetu, S. F., & Moon, N. N."
    },
    {
      "topic": "TraFoo: An Android Application for Food Delivery in Train.",
      "supervisor":
          "Rahman, M. M., Foysal, M. R., Moon, N. N., & Nur, F. N. (2021)."
    },
    {
      "topic": "Pandemic Effect on Education System among University Students.",
      "supervisor":
          "Yesmin, F., Rahman, M. M., Saifuzzaman, M., & Moon, N. N. (2021)."
    },
    {
      "topic":
          "Cyber Security Intruder Detection Using Deep Learning Approach.",
      "supervisor":
          "Islam, T., Rahman, M., Jabiullah, M., & Saifuzzaman, M. (2023)."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 750,
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
                      fontSize: 64,
                      fontFamily: "Lufga"),
                  children: [
                    TextSpan(
                      text: "Publications",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 64,
                          fontFamily: "Lufga",
                          color: WebColors.themeColor),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "What I Research",
                style: TextStyle(
                  fontSize: 20,
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
                  fontSize: 20,
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
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          journals[index]["supervisor"]!,
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(height: 10),
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
                  fontSize: 20,
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
                              fontSize: 16,
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
