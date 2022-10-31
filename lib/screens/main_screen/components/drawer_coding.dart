

import 'package:flutter/material.dart';
import 'package:portfolio/screens/main_screen/components/animated_coding_info.dart';



class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(),
        AnimatedCodingInfo(
          percentage: 0.8,
          label: 'dart',
        ),
        AnimatedCodingInfo(
          percentage: 0.1,
          label: 'python',
        ),
        AnimatedCodingInfo(
          percentage: 0.8,
          label: 'HTML',
        ),
        AnimatedCodingInfo(
          percentage: 0.7,
          label: 'CSSs',
        ),
      ],
    );
  }
}