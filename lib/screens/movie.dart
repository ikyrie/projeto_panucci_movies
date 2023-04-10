import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/pamonha.png"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 2.6,
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    elevation: 5,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 120,
                        maxHeight: 120,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text( "Filme da Pamonha", style: Theme.of(context).textTheme.displayMedium,),
                            Text( "Comédia", style: Theme.of(context).textTheme.displaySmall,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  color: Colors.green,
                                  margin: const EdgeInsets.only(right: 8.0),
                                  child: Center(
                                    child: Text(
                                      '16',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                  ),
                                ),
                                Text(
                                  '01h 49m',
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Sessões",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              children: [
                Wrap(
                  spacing: 2.0,
                  children: [
                    '20:30',
                    '20:30',
                    '20:30',
                    '20:30',
                    '20:30',
                    '20:30',
                    '20:30',
                    '20:30',
                  ].map(
                    (e) => Card(
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: 60,
                          height: 40,
                          child: Center(child: Text(e)),
                        ),
                      ),
                    ),
                  )
                  .toList(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
