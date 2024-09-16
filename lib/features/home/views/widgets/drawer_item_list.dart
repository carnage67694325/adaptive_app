import 'package:adaptive_app/features/home/views/models/drawer_item_model.dart';
import 'package:adaptive_app/features/home/views/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItmeListView extends StatelessWidget {
  const DrawerItmeListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(drawerItem: items[index]);
      },
    );
  }
}
