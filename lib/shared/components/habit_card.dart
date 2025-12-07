import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  final String title;
  const HabitCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) => Card(child: Padding(padding: const EdgeInsets.all(12), child: Text(title)));
}
