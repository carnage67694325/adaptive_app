import 'package:adaptive_app/features/home/views/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItem});
  final DrawerItemModel drawerItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItem.icon,
        // color: Colors.black,
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(drawerItem.title)),
      ),
      // textColor: Colors.black,
    );
  }
}
