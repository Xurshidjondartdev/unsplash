import 'package:flutter/material.dart';

class BlockPage extends StatelessWidget {
  const BlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          "You are blocked",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
