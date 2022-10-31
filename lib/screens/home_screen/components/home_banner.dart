import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Discover my Amazing \nArt Space',
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline3?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)
                        : Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                Row(
                  children: [
                    if (!Responsive.isMobileLarge(context))
                      FlutterCodedTextparttwo(),
                    if (!Responsive.isMobileLarge(context))
                      const SizedBox(
                        width: 5,
                      ),
                    Responsive.isMobile(context)
                        ? const Expanded(child: AnimatedText())
                        : const AnimatedText(),
                    if (!Responsive.isMobileLarge(context))
                      const SizedBox(
                        width: 5,
                      ),
                    if (!Responsive.isMobileLarge(context))
                      const FlutterCodedTextPartone(),
                  ],
                ),
                if (!Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding,
                  ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding)),
                    child: const Text(
                      'Explore Now',
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText('responsive web and mobile app..'),
          TyperAnimatedText('Hoping to be the Best Flutter developer..'),
          TyperAnimatedText('Belive In yourself! And Find yourself..'),
        ],
      ),
    );
  }
}

class FlutterCodedTextparttwo extends StatelessWidget {
  const FlutterCodedTextparttwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'Flutter  ',
            style: TextStyle(color: primaryColor),
          ),
        ],
      ),
    );
  }
}

class FlutterCodedTextPartone extends StatelessWidget {
  const FlutterCodedTextPartone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '  Flutter',
        style: TextStyle(color: primaryColor),
        children: [
          TextSpan(
            text: '/>',
          ),
        ],
      ),
    );
  }
}
