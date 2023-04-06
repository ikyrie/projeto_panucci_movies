import 'package:flutter/material.dart';
import 'package:panucci_movies/components/movie_card.dart';
import 'package:panucci_movies/components/search_input.dart';

class Home extends StatelessWidget {
Home({ Key? key }) : super(key: key);
final TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(child: SearchInput(searchTextController: inputController),),
          SliverToBoxAdapter(
            child: Text("Movies"),
          ),
          SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.7, crossAxisSpacing: 16),
              itemBuilder: (context, index) => MovieCard(),
              itemCount: 6,
            ),
        ]
      ),
    ),);
  }
}
