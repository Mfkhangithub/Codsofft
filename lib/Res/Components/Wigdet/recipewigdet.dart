import 'package:flutter/material.dart';
import 'package:food_recipe/View/Pages/Details0fallrecipes.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String thumbnailUrl;
  RecipeCard({
    required this.title,
    required this.thumbnailUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: NetworkImage(thumbnailUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(
                //   padding: EdgeInsets.all(5),
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Colors.black.withOpacity(0.4),
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                //   child: Row(
                //     children: [
                //       Icon(
                //         Icons.star,
                //         color: Colors.yellow,
                //         size: 18,
                //       ),
                //       SizedBox(width: 7),
                //       Text(rating),
                //     ],
                //   ),
                // ),
              
                // Container(
                //   padding: EdgeInsets.all(5),
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Colors.black.withOpacity(0.4),
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                //   child: Row(
                //     children: [
                //       Icon(
                //         Icons.schedule,
                //         color: Colors.yellow,
                //         size: 18,
                //       ),
                //       SizedBox(width: 7),
                //       Text(cookTime),
                //     ],
                //   ),
                // )
             
              ],
            ),
            alignment: Alignment.bottomLeft,
          ),
       
        ],
      ),
    );
  }
}


class RecipeSearchDelegate extends SearchDelegate<String> {
  final List<Map<String, dynamic>> recipes;

  RecipeSearchDelegate(this.recipes);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement how to display the search results
    return Container(); // Placeholder, replace with actual result widget
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? []
        : recipes
            .where((recipe) => recipe['title']!.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        final recipe = suggestionList[index];
        final title = recipe['title'] as String?;

        return ListTile(
          title: Text(title ?? 'No Title'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsAlllist(
                  title: title ?? 'No Title',
                  summary: recipe['summary'] as String? ?? 'No Summary',
                ),
              ),
            );
          },
        );
      },
    );
  }
}

