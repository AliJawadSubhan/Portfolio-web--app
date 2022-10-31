import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        KnowledgeSubParts(
          label: 'Flutter, Dart',
        ),
        KnowledgeSubParts(
          label: 'Google Developer Expert',
        ),
        KnowledgeSubParts(
          label: 'Sleeping Expert',
        ),
        KnowledgeSubParts(
          label: 'Gaming Expert',
        ),
      ],
    );
  }
}

class KnowledgeSubParts extends StatelessWidget {
  const KnowledgeSubParts({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(
            width: 10,
          ),
          Text(label),
        ],
      ),
    );
  }
}
