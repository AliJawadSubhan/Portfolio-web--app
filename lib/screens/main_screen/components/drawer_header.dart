import 'package:flutter/material.dart';

import '../../../constants.dart';

class UserName extends StatelessWidget {
  const UserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: bgColor,
              radius: 50,
              backgroundImage: AssetImage('assets/images/bg.jpeg'),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'Ali Jawad!',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              biodetail,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
