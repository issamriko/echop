import 'package:echop/constants.dart';
import 'package:flutter/material.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        backgroundColor: kcontentColor,
        centerTitle: true,
        leading: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: Icon(
              Icons.add,
            )),
        title: Text("My Cart"),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: 4,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 20);
          },
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        height: double.infinity,
                        width: 90,
                        decoration: BoxDecoration(
                          color: kcontentColor,
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Image.asset("assets/images/wireless.png"),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "data",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 19),
                          ),
                          SizedBox(height: 5),
                          Text("data"),
                          SizedBox(height: 5),
                          Text(
                            "data",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                  Positioned(
                    right: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_outline,
                            color: Colors.orange,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: kcontentColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                              Text("3"),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
