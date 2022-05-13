import 'package:flutter/material.dart';
import 'package:main/pokemon_collection_app/presentation/pages/local_pokemon_screen.dart';
import 'pokemon_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PokemonScreen()));
                    },
                    child: const Text('List Pokemon'))),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                const LocalPokemonScreen())));
                  },
                  child: const Text('Local Collection')),
            ),
          ],
        ),
      ),
    );
  }
}
