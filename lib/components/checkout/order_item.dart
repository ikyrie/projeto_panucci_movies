import 'package:flutter/material.dart';
import 'package:panucci_movies/models/movie.dart';

class OrderItem extends StatelessWidget {
  const OrderItem(
      {Key? key, required this.ticketType, required this.ticketAmount})
      : super(key: key);
  final String ticketType;
  final int ticketAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Ingresso", style: TextStyle(fontWeight: FontWeight.w700),),
              Text(ticketType),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Preço"),
              Text("${Movie.prices["meia"]}"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Quantidade"),
              Text("$ticketAmount"),
            ],
          ),
        ],
      ),
    );
  }
}
