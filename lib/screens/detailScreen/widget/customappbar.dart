import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          color: Colors.red,
          onPressed: () {},
          icon: Icon(Ionicons.backspace),
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
            backgroundColor: MaterialStatePropertyAll(Colors.green),
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Ionicons.backspace),
          style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
        SizedBox(width: 5),
        IconButton(
          onPressed: () {},
          icon: Icon(Ionicons.backspace),
          style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
              backgroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
      ],
    );
  }
}
