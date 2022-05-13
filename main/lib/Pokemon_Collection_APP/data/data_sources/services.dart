// import 'package:dio/dio.dart';
// import 'package:main/pokemon_collection_app/data/repositories/remote_data_sources/pokemon.dart';

// abstract class Services {
//   static Future<Pokemon?> getById(int id) async {
//     try {
//       var connectApi = await Dio().get('https://pokeapi.co/api/v2/pokemon/$id');

//       if (connectApi.data != null) {
//         return Pokemon(
//             name: connectApi.data['name'],
//             height: connectApi.data['height'],
//             weight: connectApi.data['weight']);
//       }

//       return null;
//     } catch (e) {
//       throw Exception(e.toString());
//     }
//   }
// }
