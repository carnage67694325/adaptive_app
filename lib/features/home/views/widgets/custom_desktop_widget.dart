import 'package:adaptive_app/features/home/views/widgets/grid_item.dart';
import 'package:adaptive_app/features/home/views/widgets/sliver_list_item.dart';
import 'package:flutter/material.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Expanded(flex: 2, child: GridItem()),
        SizedBox(
          height: 16,
        ),
        Expanded(child: SliverListItem()),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
