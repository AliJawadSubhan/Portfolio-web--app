import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/screens/main_screen/components/skills.dart';
import 'package:portfolio/screens/main_screen/components/user_info.dart';

import '../../../constants.dart';
import 'drawer_coding.dart';
import 'drawer_header.dart';
import 'drawer_knowledge.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(6.0),
            child: UserName(),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const UserInfor(
                    title: 'Nation',
                    text: 'Pakistan 🇵🇰',
                  ),
                  const UserInfor(
                    title: 'City',
                    text: 'Karachi ',
                  ),
                  const UserInfor(
                    title: 'Age',
                    text: '18 (As of Now)',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          'Skills',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                      const Skills(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          'Coding',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                      const Coding(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          'Knowledge',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                      const Divider(),
                      const Knowledge(),
                      const Divider(),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              'Download CV',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset('assets/icons/download.svg')
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          color: Color(0xFF24242E),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              IconButton(
                                hoverColor: Colors.transparent,
                                onPressed: () {},
                                icon:
                                    SvgPicture.asset('assets/icons/github.svg'),
                              ),
                              IconButton(
                                hoverColor: Colors.transparent,
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/linkedin.svg'),
                              ),
                              IconButton(
                                hoverColor: Colors.transparent,
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'assets/icons/twitter.svg'),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
