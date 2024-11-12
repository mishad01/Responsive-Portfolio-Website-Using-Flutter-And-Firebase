import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/utils/export.dart';

class MyExpertiseView extends StatefulWidget {
  const MyExpertiseView({super.key});

  @override
  State<MyExpertiseView> createState() => _MyExpertiseViewState();
}

class _MyExpertiseViewState extends State<MyExpertiseView> {
  List<Map<String, String>> expertise = [
    {
      "img": AssetsPath.mb,
      "title": "Mobile App Development",
      "languages": "Flutter, Kotlin, Getx, Api Integration",
      "details":
          "Experienced in building cross-platform mobile apps using Flutter and native apps using Kotlin. Proficient in state management, API integration, and optimizing performance."
    },
    {
      "img": AssetsPath.bd,
      "title": "Backend Development",
      "languages": "Firebase, Node.js,MongoDB,Express",
      "details":
          "Skilled in building scalable backends using Node.js with Express js and working with MongoDB for database management. Experienced in full-stack development with the MERN stack (MongoDB, Express, Node.js). Familiar with REST API design, authentication, and deployment."
    },
    {
      "img": AssetsPath.ml,
      "title": "Machine Learning",
      "languages": "Python, Numpy, Pandas, TensorFlow,",
      "details":
          "Proficient in data analysis and manipulation using Python libraries like Numpy and Pandas.Model development with TensorFlow and Keras."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 650,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage(AssetsPath.serviceBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          RichText(
            text: TextSpan(
              text: "MY ",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 64,
                  fontFamily: "Lufga",
                  color: Colors.white),
              children: [
                TextSpan(
                  text: "EXPERTISE",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 64,
                      fontFamily: "Lufga",
                      color: WebColors.themeColor),
                ),
              ],
            ),
          ),
          Text(
            "What can I do",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white,
              fontFamily: "Lufga",
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 420,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 120),
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 500,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black.withOpacity(0.7),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.asset(expertise[index]["img"]!),
                              ),
                            ),
                            Text(
                              expertise[index]["title"]!,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                text: "Technologies: ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "Lufga",
                                    color: Colors.green),
                                children: [
                                  TextSpan(
                                    text: expertise[index]["languages"]!,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                      fontFamily: "Lufga",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Details",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              expertise[index]["details"]!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
