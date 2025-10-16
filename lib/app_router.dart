import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'busniness_logic/cubit/characters_cubit.dart';
import 'constants/strings.dart';
import 'data/models/characters.dart';
import 'data/repository/characters_repository.dart';
import 'data/web_services/characters_web_services.dart';
import 'presentation/screens/characters_detailes_screen.dart';
import 'presentation/screens/characters_screen.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(
      charactersWebServices: CharactersWebServices(),
    );

    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: const CharactersScreen(),
          ),
        );

     
      case characterDetailesScreen:
        final character = settings.arguments as Results;
        return MaterialPageRoute(builder: (_) => CharactersDetailesScreen(character: character));
    }
    return null;
  }
}
