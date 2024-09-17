import 'package:flutter/material.dart';

class SliverListItem extends StatelessWidget {
  const SliverListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
    );
  }
}
