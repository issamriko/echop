import 'package:echop/constants.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;
  const CustomIcon({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: const BoxDecoration(
        color: kcontentColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: Colors.black,
          )),
    );
  }
}
