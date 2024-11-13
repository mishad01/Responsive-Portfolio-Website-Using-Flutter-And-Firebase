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
      "languages": "Firebase, Sql, Sql lite, Node.js,MongoDB, Express",
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
      height: 85.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w),
        image: DecorationImage(
          image: AssetImage(AssetsPath.serviceBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Wrap(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 4.h),
                RichText(
                  text: TextSpan(
                    text: "MY ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 4.2.w,
                        fontFamily: "Lufga",
                        color: Colors.white),
                    children: [
                      TextSpan(
                        text: "EXPERTISE",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 4.2.w,
                            fontFamily: "Lufga",
                            color: WebColors.themeColor),
                      ),
                    ],
                  ),
                ),
                Text(
                  "What can I do",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontFamily: "Lufga",
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int index = 0; index < expertise.length; index++)
                      Row(
                        children: [
                          Wrap(
                            children: [
                              SizedBox(
                                height: 55.h,
                                width: 30.w,
                                child: Wrap(
                                  children: [
                                    Container(
                                      height: 55.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.black.withOpacity(0.7),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.w, right: 2.w, top: 1.h),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Center(
                                              child: SizedBox(
                                                width: 15.h,
                                                height: 15.h,
                                                child: Image.asset(
                                                    expertise[index]["img"]!),
                                              ),
                                            ),
                                            Text(
                                              expertise[index]["title"]!,
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 1.h),
                                            RichText(
                                              text: TextSpan(
                                                text: "Technologies: ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    fontFamily: "Lufga",
                                                    color: Colors.green),
                                                children: [
                                                  TextSpan(
                                                    text: expertise[index]
                                                        ["languages"]!,
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.white,
                                                      fontFamily: "Lufga",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 1.h),
                                            Text(
                                              "Details",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green,
                                              ),
                                            ),
                                            Text(
                                              expertise[index]["details"]!,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w300,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
