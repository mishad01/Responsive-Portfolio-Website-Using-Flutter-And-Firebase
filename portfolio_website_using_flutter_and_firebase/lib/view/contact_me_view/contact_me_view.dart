import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/view/contact_me_view/widget/details_card.dart';

class ContactMeView extends StatefulWidget {
  const ContactMeView({super.key});

  @override
  State<ContactMeView> createState() => _ContactMeViewState();
}

class _ContactMeViewState extends State<ContactMeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 650,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: const DecorationImage(
          image: AssetImage(AssetsPath.serviceBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          /*RichText(
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
          ),*/
          const Text(
            "CONTACT ME",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Lufga",
            ),
          ),
          const Text(
            "Lets Connect",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white,
              fontFamily: "Lufga",
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 700,
                child: const Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get in Touch",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "Lufga",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hi there! I'm excited to connect with you. Whether you have a question, are interested in collaborating, or just want to chat, please don’t hesitate to reach out. I’m always open to your feedback and happy to help with any inquiries!",
                        style: TextStyle(
                          fontSize: 20,
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
              Container(
                width: 700,
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      height: 400,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          AssetsPath.pic,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
