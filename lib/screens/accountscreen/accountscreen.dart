import 'package:echop/screens/accountscreen/widget/custom_image.dart';
import 'package:echop/screens/accountscreen/widget/profile_menu.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isdark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: isdark ? Icon(Icons.sunny) : Icon(Icons.dark_mode))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 45),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImage(),
            SizedBox(height: 15),
            Text("Conding with issam",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(
              "issamriko9@gmail.com",
            ),
            SizedBox(height: 15),
            ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 60, vertical: 11)),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.deepOrangeAccent),
                ),
                onPressed: () {},
                child: Text("Edit Profile")),
            SizedBox(height: 10),
            Divider(color: Colors.grey.shade300),
            SizedBox(height: 10),
            ProfileMenu(
                title: "Settings",
                iconData: Icons.settings_outlined,
                ontap: () {}),
            ProfileMenu(
                title: "Billing Details",
                iconData: Icons.directions_railway_outlined,
                ontap: () {}),
            ProfileMenu(
                title: "User Management",
                iconData: Icons.account_circle_outlined,
                ontap: () {}),
            Divider(color: Colors.grey.shade300),
            ProfileMenu(
                title: "Information",
                iconData: Icons.info_outline,
                ontap: () {}),
            ProfileMenu(
                title: "Logout",
                textcolor: Colors.red,
                iconData: Icons.login_outlined,
                ontap: () {},
                endicon: false),
          ],
        ),
      ),
    );
  }
}
