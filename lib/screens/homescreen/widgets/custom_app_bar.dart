import 'package:echop/screens/homescreen/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomIcon(iconData: Ionicons.grid_outline),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.add),
        ),
        const Spacer(),
        const CustomIcon(iconData: Ionicons.notifications_outline),
      ],
    );
  }
}
