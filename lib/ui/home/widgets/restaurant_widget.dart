import 'package:flutter/material.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantWidget({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.0,
      children: [
        Image.asset(
          'assets/${restaurant.imagePath}',
          width: 72,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurant.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: List.generate(
                restaurant.stars.toInt(),
                (index) => Image.asset(
                  'assets/others/star.png',
                  width: 16,
                  height: 16,
                ),
              ),
            ),
            Text("${restaurant.distance} km"),
          ],
        ),
      ],
    );
  }
}
