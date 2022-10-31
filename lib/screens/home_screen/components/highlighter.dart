import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class HighLighter extends StatelessWidget {
  const HighLighter({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: Responsive.isMobile(context) ? 3 : 6),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
