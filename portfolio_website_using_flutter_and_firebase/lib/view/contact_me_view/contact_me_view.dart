import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/utils/export.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/contact_me_view/widget/details_card.dart';

class ContactMeView extends StatefulWidget {
  const ContactMeView({super.key});

  @override
  State<ContactMeView> createState() => _ContactMeViewState();
}

class _ContactMeViewState extends State<ContactMeView> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          height: 80.h,
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
              SizedBox(height: 4.h),
              Text(
                "CONTACT ME",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Lufga",
                ),
              ),
              Text(
                "Lets Connect",
                style: TextStyle(
                  fontSize: 15.sp,
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
                  Expanded(
                    child: Container(
                      height: 55.0.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get in Touch",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "Lufga",
                            ),
                          ),
                          Text(
                            "Hi there! I'm excited to connect with you. Whether you have a question, are interested in collaborating, or just want to chat, please don’t hesitate to reach out. I’m always open to your feedback and happy to help with any inquiries!",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontFamily: "Lufga",
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          DetailsCard(
                            title: "Name",
                            details: "MD. SAKIF RAHAMAN MISHAD",
                            icon: Icons.person_pin,
                          ),
                          DetailsCard(
                            title: "Contact",
                            details: "0185315209*",
                            icon: Icons.phone_in_talk,
                          ),
                          DetailsCard(
                            title: "Email",
                            details: "sakifrahman0099@gmail.com",
                            icon: Icons.email,
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: 350,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          AssetsPath.pic,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
