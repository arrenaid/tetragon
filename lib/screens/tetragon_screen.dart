import 'package:flutter/material.dart';

class TetragonScreen extends StatelessWidget {
  const TetragonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white54,
      body: Center(
        child: Text(
          'Tetragon',
          style: TextStyle(fontSize: 50, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
