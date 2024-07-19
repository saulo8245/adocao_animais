import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/animal.dart';
import 'auth_service.dart';
import '../utils/constants.dart';

class ApiService {
  static Future<List<Animal>> fetchAnimals() async {
    final response = await http.get(
      Uri.parse('$baseUrl/api/pets'),
      headers: {
        'Authorization': 'Bearer ${AuthService.token}',
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Animal.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load animals');
    }
  }
}
