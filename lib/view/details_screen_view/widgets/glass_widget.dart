import 'dart:ui';

import 'package:flutter/material.dart';

class GlassWidget extends StatelessWidget {
  const GlassWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 416,
      height: 508,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.white.withOpacity(0.5))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 15.0),
          child: Container(
            alignment: Alignment.center,
            color: Colors.grey
                .withOpacity(0.1), // Adjust opacity to enhance effect
            child: Text(
              'Glass Effect',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
