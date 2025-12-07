import 'package:flutter/material.dart';

class FocusTimerWidget extends StatelessWidget {
  final String time;
  final VoidCallback onToggle;

  const FocusTimerWidget({super.key, required this.time, required this.onToggle});

  @override
  Widget build(BuildContext context) => Column(mainAxisSize: MainAxisSize.min, children: [Text(time, style: const TextStyle(fontSize: 36)), const SizedBox(height: 8), ElevatedButton(onPressed: onToggle, child: const Text('Start/Pause'))]);
}
