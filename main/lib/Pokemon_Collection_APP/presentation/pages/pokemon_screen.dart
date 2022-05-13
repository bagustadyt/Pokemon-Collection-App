import 'package:flutter/material.dart';
import 'package:main/pokemon_collection_app/data/repositories/remote_data_sources/pokemon.dart';
import 'package:main/pokemon_collection_app/presentation/widgets/pokemon_card.dart';

class PokemonScreen extends StatefulWidget {
  const PokemonScreen({Key? key}) : super(key: key);

  @override
  State<PokemonScreen> createState() => _PokemonScreenState();
}

class _PokemonScreenState extends State<PokemonScreen> {
  Pokemon? pokemon;

  @override
  void initState() {
    super.initState();

    Pokemon.getId('clefairy').then((value) => () {
          pokemon = value;
        });
  }

  // List<Pokemon> id = [Pokemon.getId('clefairy')];

  // List<Container> container = [
  //   Container(
  //     height: 300,
  //     width: 200,
  //     color: Colors.black,
  //   ),
  //   Container(
  //     height: 300,
  //     width: 200,
  //     color: Colors.red,
  //   ),
  //   Container(
  //     height: 300,
  //     width: 200,
  //     color: Colors.green,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // PageController pageController =
    //     PageController(initialPage: 0, viewportFraction: 0.6);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Screen'),
      ),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        // itemCount: container.length,
        // controller: pageController,
        itemBuilder: (BuildContext context, int index) {
          return Center(child: PokemonCard(pokemon: pokemon!));
        },
      ),
    );
  }
}
