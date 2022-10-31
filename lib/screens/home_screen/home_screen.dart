import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recom.dart';
import 'package:portfolio/screens/home_screen/components/home_banner.dart';
import 'package:portfolio/screens/home_screen/components/projects_responsive.dart';
import 'package:portfolio/screens/home_screen/components/recomm_box.dart';
import 'package:portfolio/screens/main_screen/main_screen.dart';
import 'components/highlighter_text.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
     const SizedBox(
        height: 12,
      ),
      const HomeBanner(),
      const HighLighterText(),
      const MyProjects(),
      const SizedBox(
        height: defaultPadding,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommendations',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demo_recommendations.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: RecommBox(
                      recommendation: demo_recommendations[index],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}


