import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home_screen/components/animated_counter.dart';
import 'package:portfolio/screens/home_screen/components/highlighter.dart';

class HighLighterText extends StatelessWidget {
  const HighLighterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  HighLighter(
                    counter: AnimatedCounter(
                      value: 5,
                      text: '+ ',
                    ),
                    label: 'Projects Posted',
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  HighLighter(
                    counter: AnimatedCounter(
                      value: 60,
                      text: '+ followers ',
                    ),
                    label: 'in LinkedIn',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Responsive.isMobile(context) ? 17 : 20,
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  HighLighter(
                    counter: AnimatedCounter(
                      value: 30,
                      text: '+ commit ',
                    ),
                    label: 'in Github',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  HighLighter(
                    counter: AnimatedCounter(
                      value: 6,
                      text: '+ months ',
                    ),
                    label: 'Learning Flutter',
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
