import 'package:echop/screens/accountscreen/accountscreen.dart';
import 'package:echop/screens/cartscreen/cart_screen.dart';
import 'package:echop/screens/homescreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreen = 0;
  List screen = [
    Homescreen(),
    AddToCartScreen(),
    const Scaffold(),
    Scaffold(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = 0;
                });
              },
              child: currentScreen == 0
                  ? Icon(Ionicons.home)
                  : Icon(Ionicons.home_outline),
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = 1;
                  });
                },
                child: currentScreen == 1
                    ? Icon(Ionicons.storefront)
                    : Icon(Ionicons.storefront_outline)),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = 2;
                });
              },
              child: currentScreen == 2
                  ? Icon(Ionicons.mail_open)
                  : Icon(Ionicons.mail_open_outline),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = 3;
                });
              },
              child: currentScreen == 3
                  ? Icon(Ionicons.settings)
                  : Icon(Ionicons.settings_outline),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentScreen = 4;
                });
              },
              child: currentScreen == 4
                  ? Icon(Ionicons.person)
                  : Icon(Ionicons.person_outline),
            ),
          ],
        ),
      ),
      body: screen[currentScreen],
    );
  }
}
