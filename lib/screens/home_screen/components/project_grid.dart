








import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen/components/project_card.dart';

import '../../../constants.dart';
import '../../../models/project.dart';

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: demo_projects.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index].title!,
        desc: demo_projects[index].description!,
      ),
    );
  }
}
