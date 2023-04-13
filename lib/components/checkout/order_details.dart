import 'package:flutter/material.dart';

import '../parental_rating.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/mario_filme.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 80,
            height: 120,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Mario the movie", style: Theme.of(context).textTheme.bodyLarge),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      const ParentalRating(),
                      Text('01h 32m', style: Theme.of(context).textTheme.displaySmall),
                    ],
                  ),
                ),
                const Text("Sessão: 18:00"),
              ],
            ),
          ),
        ],),
    );
  }
}
