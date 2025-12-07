import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  final String message;
  const EmptyState({super.key, this.message = 'Nothing here yet'});

  @override
  Widget build(BuildContext context) => Center(child: Text(message));
}
