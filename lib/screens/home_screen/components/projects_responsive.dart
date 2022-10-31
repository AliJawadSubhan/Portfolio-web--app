

import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen/components/project_grid.dart';

import '../../../responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 20,
        ),
        const Responsive(
          mobileLarge: ProjectGrid(
            crossAxisCount: 2,
          ),
          mobile: ProjectGrid(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          tablet: ProjectGrid(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectGrid(),
        ),
      ],
    );
  }
}