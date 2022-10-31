
import 'package:flutter/material.dart';

class UserInfor extends StatelessWidget {
  const UserInfor({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            '$text ',
          ),
        ],
      ),
    );
  }
}
