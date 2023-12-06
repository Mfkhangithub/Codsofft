import 'dart:convert';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Map<String, dynamic>>> getRecipes() async {
    final apiKey = 'bccde0ab73db49abb6e61be41bb23825'; // Replace with your actual API key
    final response = await http.get(
      Uri.parse('https://api.spoonacular.com/recipes/random?apiKey=$apiKey&number=100'),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic> recipes = data['recipes'];
      return List<Map<String, dynamic>>.from(recipes);
    } else {
      print('Failed to load recipes. Status code: ${response.statusCode}');
      return [];
    }
  }
}



// recipe_api.dart
