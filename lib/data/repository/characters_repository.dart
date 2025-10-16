import '../models/characters.dart';
import '../web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository({ required this.charactersWebServices });

  Future<List<Results>> getAllCharacters() async {
    final charactersData = await charactersWebServices.getAllCharacters();
    return charactersData?.results ?? []; // ترجع الـ list
  }
}
