import 'package:flutter/material.dart';

class ParentalRating extends StatelessWidget {
  const ParentalRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(8.0)),
      margin: const EdgeInsets.only(right: 8.0),
      child: Center(
          child: Text('L', style: Theme.of(context).textTheme.labelMedium)),
    );
  }
}
