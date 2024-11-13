import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReferenceCard extends StatelessWidget {
  const ReferenceCard({
    super.key,
    required this.isHovered,
    required this.item,
  });
  final Map<String, String> item;

  final bool isHovered;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  item["image"]!,
                  fit: BoxFit.fill,
                ),
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
              item["pos"]!,
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
    );
  }
}
