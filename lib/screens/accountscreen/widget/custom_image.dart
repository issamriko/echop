import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage("assets/images/wireless.png")),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 30,
              width: 28,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent, shape: BoxShape.circle),
              child: Icon(Icons.edit),
            ))
      ],
    );
  }
}
