import 'package:adaptive_app/features/home/views/widgets/grid_item.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 12,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: GridItem(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
