import 'package:echop/constants.dart';
import 'package:echop/models/list_items.dart';
import 'package:echop/screens/detailScreen/detail_items_screen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomDetailScreen extends StatelessWidget {
  final Items item;
  const CustomDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailItemsScreen(categorys: item),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade200,
            ),
            child: Column(
              children: [
                Image.asset(
                  item.image,
                  width: 120,
                  height: 120,
                ),
                Text(
                  item.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        "\$${item.price}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Row(
                        children: List.generate(
                          item.colors.length,
                          (cindex) => Container(
                            height: 15,
                            width: 15,
                            margin: EdgeInsets.symmetric(horizontal: 1),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: item.colors[cindex],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(10)),
                  color: kprimaryColor,
                ),
                width: 30,
                height: 30,
                child: Icon(
                  Ionicons.heart_outline,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
