import 'package:echop/screens/cartscreen/cart_screen.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  final Function() increment;
  final Function() dincrement;
  final int currentnumber;
  const AddToCart({
    super.key,
    required this.increment,
    required this.dincrement,
    required this.currentnumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: Colors.black,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: dincrement,
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  Text(
                    "$currentnumber",
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                      onPressed: increment,
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddToCartScreen(),
                  )),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.deepOrangeAccent,
                ),
                child:
                    Text("Add to Cart", style: TextStyle(color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
