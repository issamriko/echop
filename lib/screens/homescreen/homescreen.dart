import 'package:echop/models/category.dart';
import 'package:echop/models/list_items.dart';
import 'package:echop/screens/homescreen/widgets/custom_app_bar.dart';
import 'package:echop/screens/homescreen/widgets/custom_home_slider.dart';
import 'package:echop/screens/homescreen/widgets/custom_product_card.dart';
import 'package:echop/screens/homescreen/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentslide = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                const CustomAppBar(),
                SizedBox(
                  height: height * .02,
                ),
                const CustomSearchBar(),
                SizedBox(
                  height: height * .02,
                ),
                HomeSlider(
                    height: height * .27,
                    onPageChanged: (value) {
                      setState(() {
                        currentslide = value;
                      });
                    },
                    currentslide: currentslide),
                SizedBox(
                  height: height * .02,
                ),
                SizedBox(
                  height: height * .110,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(categories[index].image),
                                )),
                          ),
                          Text(
                            categories[index].title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 20),
                    itemCount: categories.length,
                  ),
                ),
                SizedBox(
                  height: height * .02,
                ),
                Row(
                  children: [
                    Text(
                      "Special For You",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .02,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 25),
                  itemBuilder: (context, index) {
                    return CustomDetailScreen(item: items[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
