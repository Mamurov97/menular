import 'package:dars/home.dart';
import 'package:dars/profile.dart';
import 'package:dars/setting.dart';
import 'package:flutter/material.dart';
import 'package:quds_popup_menu/quds_popup_menu.dart';

import 'book.dart';

List<QudsPopupMenuBase> getMenuItems(BuildContext context) {
  return [
    QudsPopupMenuItem(
      leading: const Icon(Icons.home),
      title: const Text("Home"),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MyHomePage(),
          ),
        );
      },),
    QudsPopupMenuItem(
      leading: const Icon(Icons.person),
      title: const Text("Profile"),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Profile(),
          ),
        );
      },),
    QudsPopupMenuItem(
      leading: const Icon(Icons.book),
      title: const Text("Book"),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Book(),
          ),
        );
      },),
    QudsPopupMenuItem(
      leading: const Icon(Icons.settings),
      title: const Text("Setting"),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Setting(),
          ),
        );
      },),

  ];
}