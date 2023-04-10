import 'package:flutter/material.dart';

class TabBarMovie extends StatefulWidget {
  const TabBarMovie({super.key});

  @override
  State<TabBarMovie> createState() => _TabBarMovieState();
}

class _TabBarMovieState extends State<TabBarMovie> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // backgroundColor: Colors.red,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TabBar(
                    tabs: [Tab(text: 'Sessões'), Tab(text: 'Detalhes')]),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView(
                      padding: const EdgeInsets.all(8),
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
                          ]
                              .map(
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
                    ListView(
                      children: [
                        Text(
                          'Sinopse:',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Mario é um filme baseado na série de video games, Super Mario Bros, da Nintendo. Em Super Mario Bros. - O Filme, Mario (Chris Pratt) é um encanador qualquer no bairro de Brooklyn junto com seu irmão Luigi (Charlie Day). Um dia, Mario e Luigi vão para no reino dos cogumelos, governado pela Princesa Peach (Anya Taylor-Joy), mas ameaçado pelo rei dos Koopas, Bowser (Jack Black), que vai fazer de tudo para conseguir reinar todos os lugares. É então quando Luigi é raptado por Bowser e o usa para procurar Mario, o único capaz de deter o Koopa e reestabelexcer a paz. Mario terá que aprender como viver nesse novo reino perigoso, passando por vários biomas, aprender a dirigir carros, utilizar itens que o fazem soltar bolas de fogo das mãos, virar um animal e andar em plataformas nada confiáveis. Também estará acompanhados de amigos, como Toad (Keegan-Michael Key) e Donkey Kong (Seth Rogan).',
                            style: Theme.of(context).textTheme.displaySmall,
                            softWrap: true,
                            maxLines: 100,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
