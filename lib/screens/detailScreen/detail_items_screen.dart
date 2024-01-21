import 'package:echop/constants.dart';
import 'package:echop/models/list_items.dart';
import 'package:echop/screens/detailScreen/widget/custom_addto_cart.dart';
import 'package:echop/screens/homescreen/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DetailItemsScreen extends StatefulWidget {
  final Items categorys;
  const DetailItemsScreen({super.key, required this.categorys});

  @override
  State<DetailItemsScreen> createState() => _DetailItemsScreenState();
}

class _DetailItemsScreenState extends State<DetailItemsScreen> {
  int currenttab = 0;
  int currentslide = 0;
  int currentnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddToCart(
        currentnumber: currentnumber,
        increment: () {
          setState(() {
            currentnumber++;
          });
        },
        dincrement: () {
          setState(() {
            if (currentnumber != 1) {
              currentnumber--;
            }
          });
        },
      ),
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CustomAppBar(),
              ),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: 4,
                  onPageChanged: (value) {
                    setState(() {
                      currentslide = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset("assets/images/wireless.png");
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => AnimatedContainer(
                    margin: EdgeInsets.only(right: 2),
                    height: 10,
                    width: currentslide == index ? 16 : 10,
                    duration: Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black),
                      color:
                          currentslide == index ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      "Wireless Headphones",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$520.0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Ionicons.star,
                                        color: Colors.white,
                                        size: 17,
                                      ),
                                      Text(
                                        "4.8",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                                Text("(320 review)"),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "Seller:",
                                  style: TextStyle(fontSize: 17)),
                              TextSpan(
                                  text: "issam",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Color",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: List.generate(
                        3,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currenttab = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 5),
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: widget.categorys.colors[index],
                              ),
                              color: Colors.white,
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              margin: currenttab == index
                                  ? EdgeInsets.all(2)
                                  : null,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.categorys.colors[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        "Description",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "The UK Open Billiards Championship is an English billiards tournament, first contested in 1934. Joe Davis won the inaugural UK Professional English Billiards Championship title with an 18,745–18,309 defeat of Tom Newman (pictured). After 1934, the UK Championship was the premier event of the billiards season in the UK, in the absence of any contests for the world championships. David Causier won the 2019 title, with a 632–315 victory over Mark Hirst in the final. The competition was cancelled in 2020 due to the COVID-19 pandemic, and has not been held since. The tournament has been staged 35 times and produced 17 different champions. Mike Russell has won the title a record eight times, one more than Joe Davis's total. Causier has taken three titles, and the only other players to have won the tournament more than once are two-time champions Rex Williams, Robby Foldvari, and Roxton Chapman.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
