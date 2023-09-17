import 'package:flutter/material.dart';
import 'package:flutter_video_call/call.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Call(callID: "1")));
          },
          child: const Text("Join Call"),
        ),
      ),
    );
  }
}