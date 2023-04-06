import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
const MovieCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Card(
            clipBehavior: Clip.hardEdge,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: 200),
              child: InkWell(
                onTap: () {},
                child: Image.asset("assets/images/pamonha.png", fit: BoxFit.cover),
              ),
            )),
        Text("Filme da pamonha")
      ],
    );
  }
}
