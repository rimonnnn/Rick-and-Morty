import 'package:dio/dio.dart';
import '../../constants/strings.dart';
import '../models/characters.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
    dio = Dio(options);
  }
  Future<Characters?> getAllCharacters() async {
    try {
      Response response = await dio.get("character");
      print("Response status: ${response.statusCode}");
      print("Data: ${response.data}"); // شوف البيانات فعلاً
      return Characters.fromJson(response.data);
    } catch (e) {
      print("Error fetching characters: $e");
      return null;
    }
  }
}
