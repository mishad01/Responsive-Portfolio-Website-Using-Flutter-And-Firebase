import 'package:flutter/material.dart';
import 'package:portfolio_website_using_flutter_and_firebase/utils/export.dart';

class InstitutionCard extends StatelessWidget {
  const InstitutionCard({
    super.key,
    required this.isHovered,
    required this.item,
  });
  final Map<String, String> item;

  final bool isHovered;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: 50.h,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 0.5.w),
          decoration: BoxDecoration(
              color: isHovered
                  ? Colors.green.withOpacity(0.5)
                  : Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.only(left: 1.w, right: 1.w, top: 3.h),
            child: Column(
              children: [
                Container(
                  width: 11.0.w,
                  height: 22.0.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.w),
                  ),
                  child: Image.asset(
                    item["image"]!,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  item["title"]!,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: "Lufga",
                  ),
                ),
                Text(
                  item["gpa"]!,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black,
                    fontFamily: "Lufga",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  item["inst"]!,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontFamily: "Lufga",
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
