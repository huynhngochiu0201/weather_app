import 'package:flutter/material.dart';

class HomeND extends StatelessWidget {
  const HomeND({super.key, required this.temp});
  final num temp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          temp.round().toString(),
          style: const TextStyle(
              fontSize: 100.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        const Text(
          '0',
          style: TextStyle(
              fontSize: 36.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
