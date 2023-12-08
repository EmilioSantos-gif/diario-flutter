import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Icon(
              Icons.wb_sunny,
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                '82 Clear',
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
                '4500 San Alpho Drive, Dallas'
            )
          ],
        )
      ],
    );
  }
}
