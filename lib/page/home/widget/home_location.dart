import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Homelocation extends StatelessWidget {
  const Homelocation({super.key, required this.nameLocation});
  final String nameLocation;
  @override
  Widget build(BuildContext context) {
    final dateformats = DateFormat('dd-MM-yyyy');
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Vector (1).png'),
            const SizedBox(
              width: 10,
            ),
            Text(
              nameLocation,
              style: const TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 17,
        ),
        Text(
          dateformats.format(DateTime.now()),
          style: const TextStyle(
              fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
