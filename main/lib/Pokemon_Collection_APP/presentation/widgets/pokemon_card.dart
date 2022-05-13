import 'package:flutter/material.dart';
import 'package:main/pokemon_collection_app/data/repositories/remote_data_sources/pokemon.dart';

class PokemonCard extends StatefulWidget {
  const PokemonCard({Key? key, required Pokemon pokemon}) : super(key: key);

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  late final Pokemon pokemon;

  final TextStyle textStyle = const TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 2)),
      width: 400,
      height: 500,
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.only(left: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TYPE POKEMON
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: const Text('Type Pokemon'),
          ),

          // NAME POKEMON
          Container(
            margin: const EdgeInsets.only(bottom: 150),
            child: Center(
              child: Text(
                // ignore: unnecessary_string_interpolations
                '${pokemon.name}',
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // IMAGE POKEMON
          Container(
            margin: const EdgeInsets.only(bottom: 45),
            child: const Center(
              child: Text(
                'Image Pokemon',
                textAlign: TextAlign.center,
              ),
            ),
          ),

          // DETAIL POKEMON
          Container(
            margin: const EdgeInsets.only(bottom: 75),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        child: Text(
                          'Height: ',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(
                        child: Text(' : ${pokemon.height}'),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        child: Text(
                          'Weight',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(
                        child: Text(': ${pokemon.weight}'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          // BUTTON SAVE
          Center(
            child: SizedBox(
              width: 200,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text('SAVE')),
            ),
          )
        ],
      ),
    );
  }
}
