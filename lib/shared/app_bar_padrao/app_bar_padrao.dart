// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';

class AppBarPadrao extends StatelessWidget implements PreferredSize {
  const AppBarPadrao({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorsApp.corAzulApp,
      title: Image.asset('images/imageSicon.png'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    return new Size.fromHeight(kToolbarHeight);
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
