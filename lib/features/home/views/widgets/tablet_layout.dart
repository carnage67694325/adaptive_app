import 'package:adaptive_app/features/home/views/widgets/custom_list.dart';
import 'package:adaptive_app/features/home/views/widgets/custom_sliver_list.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(child: CustomList()),
        CustomSliverList(),
      ],
    );
  }
}
