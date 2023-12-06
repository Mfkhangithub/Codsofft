import 'package:flutter/material.dart';
import 'package:food_recipe/Modle/recipe_model.dart';


class DetailScreen extends StatelessWidget {
  final RecipeModel recipe;

  const DetailScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 3, 55, 68),
        title: Text(recipe.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildSection('Ingredients', recipe.ingredients),
              _buildSection('Instructions', recipe.instructions),
              _buildSection('Optional Additions', recipe.optionalAdditions),
              _buildSection("Cooking Time", recipe.cook),
              _buildSection("Serve", recipe.serve),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: details.map((detail) => _buildDetail(detail)).toList(),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildDetail(String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text('• $detail'),
    );
  }
}
