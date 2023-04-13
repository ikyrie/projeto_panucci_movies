import 'package:flutter/material.dart';

class ParentalRating extends StatelessWidget {
  const ParentalRating({super.key, this.duration, this.classification});
  final String? duration;
  final String? classification;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(8.0)),
          margin: const EdgeInsets.only(right: 8.0),
          child: Center(
              child: Text(classification ?? '?',
                  style: Theme.of(context).textTheme.labelMedium)),
        ),
        Text('01h 32m', style: Theme.of(context).textTheme.displaySmall)
      ],
    );
  }
}
