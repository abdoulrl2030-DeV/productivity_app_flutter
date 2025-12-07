import 'package:flutter/material.dart';

class FocusTimerPage extends StatefulWidget {
  const FocusTimerPage({super.key});

  @override
  State<FocusTimerPage> createState() => _FocusTimerPageState();
}

class _FocusTimerPageState extends State<FocusTimerPage> {
  int seconds = 1500; // 25 minutes
  bool running = false;

  void toggle() {
    setState(() => running = !running);
  }

  @override
  Widget build(BuildContext context) {
    final minutes = (seconds / 60).floor();
    final secs = seconds % 60;
    return Scaffold(
      appBar: AppBar(title: const Text('Focus Timer')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}', style: const TextStyle(fontSize: 48)),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: toggle, child: Text(running ? 'Pause' : 'Start'))
        ]),
      ),
    );
  }
}
