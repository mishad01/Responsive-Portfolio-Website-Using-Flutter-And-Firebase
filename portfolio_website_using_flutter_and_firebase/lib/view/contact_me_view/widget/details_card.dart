import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
    required this.title,
    required this.details,
    required this.icon,
  });
  final String title;
  final String details;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
            color: Colors.white,
            fontFamily: "Lufga",
          ),
        ),
        leading: Icon(
          icon,
          color: Colors.white,
          size: 20.sp,
        ),
        subtitle: Text(
          details,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
            color: Colors.white,
            fontFamily: "Lufga",
          ),
        ),
      ),
    );
  }
}
