import 'package:http/http.dart' as http;
import 'dart:convert';

class Pokemon {
  final String name;
  final String height;
  final String weight;
  final String? types;
  final String? images;

  Pokemon(
      {required this.name,
      required this.height,
      required this.weight,
      this.types,
      this.images});

  factory Pokemon.createPokemon(Map<String, dynamic> object) {
    return Pokemon(
        name: object['name'].toString(),
        height: object['height'].toString(),
        weight: object['weight'].toString());
  }

  static Future<Pokemon?> getId(String name) async {
    Uri apiUrl = Uri.parse("https://pokeapi.co/api/v2/pokemon/$name");

    var apiResult = await http.get(apiUrl);

    var jsonObject = json.decode(apiResult.body);

    var userData = (jsonObject as Map<String, dynamic>);

    return Pokemon.createPokemon(userData);
  }
}
