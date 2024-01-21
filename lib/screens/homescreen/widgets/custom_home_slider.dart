import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  final Function(int)? onPageChanged;
  final height;
  final currentslide;
  const HomeSlider(
      {super.key,
      required this.onPageChanged,
      required this.height,
      required this.currentslide});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: onPageChanged,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/1.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ),
        Positioned.fill(
          bottom: 6,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => AnimatedContainer(
                  height: 7,
                  width: currentslide == index ? 12 : 7,
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1),
                      color:
                          currentslide == index ? Colors.black : Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
