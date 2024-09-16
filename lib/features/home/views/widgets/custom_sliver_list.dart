import 'package:adaptive_app/features/home/views/widgets/sliver_list_item.dart';
import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: SliverListItem(),
        );
      },
    );
  }
}
