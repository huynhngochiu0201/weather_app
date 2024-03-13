import 'package:flutter/material.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail(
      {super.key, required this.humidity, required this.speedWind});

  final num humidity;
  final num speedWind;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset('assets/images/Vector.png'),
            Text(
              '${speedWind}Km/h',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset('assets/images/humidity (1).png'),
            Text(
              '$humidity%',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
