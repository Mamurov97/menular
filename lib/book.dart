import 'package:dars/drawer_widget.dart';
import 'package:dars/popup.dart';
import 'package:flutter/material.dart';
import 'package:quds_popup_menu/quds_popup_menu.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          QudsPopupButton(
              tooltip: 'T',
              items: getMenuItems(context),
              child: const Icon(Icons.more_vert)),
        ],
      ),      drawer:MyDrawer(context),
      body: const Center(
        child: Text("Book"),
      ),
    );
  }
}
