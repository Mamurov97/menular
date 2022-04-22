import 'package:dars/book.dart';
import 'package:dars/home.dart';
import 'package:dars/profile.dart';
import 'package:dars/setting.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget MyDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          color: Colors.teal,
          child: Center(child: Text(
            "Mamurov \n G'olibjon",
            style: Theme.of(context).textTheme.headline4,
          ),),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text("Home"),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MyHomePage(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("Profile"),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Profile(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.book),
          title: const Text("Book"),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Book(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Setting"),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Setting(),
              ),
            );
          },
        ),
      ],
    ),
  );
}
