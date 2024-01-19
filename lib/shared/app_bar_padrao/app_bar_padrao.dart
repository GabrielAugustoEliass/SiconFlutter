// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import '../constants/colors.dart';

// ignore: must_be_immutable
class AppBarPadrao extends StatelessWidget implements PreferredSize {
  final Widget? title;
  bool showCallBack;

  AppBarPadrao({
    Key? key,
    required this.title,
    required this.showCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: showCallBack,
      backgroundColor: ColorsApp.corAzulApp,
      title: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: title,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: ColorsApp.corAzulApp,
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
  Widget get child => throw UnimplementedError();
}
