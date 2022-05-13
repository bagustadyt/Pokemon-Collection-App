import 'package:flutter/material.dart';

class LocalPokemonScreen extends StatelessWidget {
  const LocalPokemonScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Collection Screen'),
      ),
      body: const Center(),
    );
  }
}
