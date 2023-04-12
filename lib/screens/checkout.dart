import 'package:flutter/material.dart';
import 'package:panucci_movies/components/checkout/order_item.dart';
import 'package:panucci_movies/components/parental_rating.dart';

import '../components/checkout/payment_method.dart';
import '../components/checkout/payment_total.dart';

class Checkout extends StatelessWidget {
  final BuildContext homeContext;
  const Checkout({Key? key, required this.homeContext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
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
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Pedido",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  children: const <Widget>[
                    OrderItem(ticketType: "Meia", ticketAmount: 2),
                    OrderItem(ticketType: "Inteira", ticketAmount: 5),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Pagamento",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              const PaymentMethod(),
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Confirmar total",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              const PaymentTotal(total: 100),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.surfaceTint),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.account_balance_wallet),
                      ),
                      Text(
                        "Pedir",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
                ))
            ],
          ),
        ),
      ),
    );
  }
}
