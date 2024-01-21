import 'package:echop/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: <Widget>[
          Icon(Ionicons.search),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search...", border: InputBorder.none),
            ),
          ),
          Spacer(),
          Container(
            height: 30,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(onPressed: () {}, icon: Icon(Ionicons.options_outline)),
        ],
      ),
    );
  }
}
