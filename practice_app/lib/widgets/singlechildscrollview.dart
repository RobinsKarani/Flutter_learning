import 'package:flutter/material.dart';

class SingleChildScroll extends StatelessWidget {
  const SingleChildScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row In Flutter'),
      ),
      body: Container(
        color: Colors.green,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // Try replacing "center" with "start", "end", "spaceAround", "spaceEvenly" or "spaceBetween"
            mainAxisAlignment: MainAxisAlignment.center,
            // Try replacing "center" with "start", "end", "stretch" or "baseline"
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                50, (index) => const Icon(Icons.star, color: Colors.yellow)),
          ),
        ),
      ),
    );
  }
}
