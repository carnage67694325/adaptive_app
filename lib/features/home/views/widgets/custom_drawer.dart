import 'package:adaptive_app/features/home/views/models/drawer_item_model.dart';
import 'package:adaptive_app/features/home/views/widgets/drawer_item_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'D A S H B O A R D', icon: FontAwesomeIcons.home),
    DrawerItemModel(title: 'S E T T I N G S', icon: FontAwesomeIcons.gear),
    DrawerItemModel(
        title: ' A B O U T', icon: FontAwesomeIcons.circleExclamation),
    DrawerItemModel(
        title: 'L O G O U t', icon: FontAwesomeIcons.arrowRightFromBracket),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(
            FontAwesomeIcons.solidHeart,
            size: 56,
          )),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: DrawerItmeListView(items: items),
          )
        ],
      ),
    );
  }
}
