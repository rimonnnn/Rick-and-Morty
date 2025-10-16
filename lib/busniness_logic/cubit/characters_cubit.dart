import 'package:bloc/bloc.dart';
import '../../data/models/characters.dart';
import '../../data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<Results> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  void getAllCharacters() {
    charactersRepository.getAllCharacters().then((charactersList) {
      characters = charactersList; // خزّن النتايج
      emit(CharactersLoaded(characters)); // غيّر الحالة
    }).catchError((error) {
      print("Error in Cubit: $error");
    });
  }
}
