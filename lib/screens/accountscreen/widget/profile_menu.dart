import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool endicon;
  final Function()? ontap;
  final Color? textcolor;
  const ProfileMenu(
      {super.key,
      required this.title,
      required this.iconData,
      required this.ontap,
      this.endicon = true,
      this.textcolor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: ontap,
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.w600, color: textcolor, fontSize: 14.5),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xffE5E6FE),
            shape: BoxShape.circle,
          ),
          child: Icon(
            iconData,
            color: Color(0xff3039A2),
          ),
        ),
        trailing: endicon
            ? Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(75, 210, 209, 210),
                ),
                child: Icon(Icons.keyboard_arrow_right_outlined),
              )
            : null);
  }
}
