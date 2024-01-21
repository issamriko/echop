import 'package:echop/screens/splashscreen/splash_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CupertinoScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: "echop",
      theme: ThemeData(
        textTheme: GoogleFonts.mulishTextTheme(),
      ),
      home: SplachScreen(),
    );
  }
}
