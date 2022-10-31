





import 'package:flutter/material.dart';

import '../../../constants.dart';

class AnimatedCodingInfo extends StatelessWidget {
  const AnimatedCodingInfo({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    (value * 100).toInt().toString() + '%',
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              LinearProgressIndicator(
                color: primaryColor,
                backgroundColor: darkColor,
                value: value,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
