
import 'package:flutter/material.dart';

import 'animated_skill_info.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: AnimatedSkillInfo(
            percentage: 0.7,
            label: 'Flutter',
          ),
        ),
        Expanded(
          child: AnimatedSkillInfo(
            percentage: 1.0,
            label: 'Eating',
          ),
        ),
        Expanded(
          child: AnimatedSkillInfo(
            percentage: 0.5,
            label: 'Sleeping',
          ),
        ),
      ],
    );
  }
}