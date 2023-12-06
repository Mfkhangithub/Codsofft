import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:food_recipe/Modle/recipe_model.dart';
import 'package:food_recipe/Res/Components/Wigdet/recipe_item.dart';
import 'package:food_recipe/Res/Components/app_color.dart';
import 'package:food_recipe/View/Pages/Details_Screen.dart';
import 'package:food_recipe/View/Pages/Recipelist.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color(0xff264a52),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 24,
          bottom: MediaQuery.of(context).padding.bottom + 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "FOOD LOVERS",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: AppColor.primaryColor),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "What you want to cook today ?",
                  style: TextStyle(color: Colors.white,fontSize: 15)
              ),
            ),
            const SizedBox(height: 8),
              Center(
                child: TextButton(
                            onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RecipesListHome()));
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.food_bank_rounded, size: 50, color: Colors.amber,),
                                Text(
                                  "See All Recipes",
                                  style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.white,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ],
                            ),
                          ),
              ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              decoration: BoxDecoration(
                // color: AppColor.primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.info_outline , color: Colors.white,),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [  
                        Text(
                          "5 New Recipes Arive in the Categorires you are subscribed.",
                          style: TextStyle(color: Colors.white,fontSize: 13)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tranding Recipes",
                    style: TextStyle(color: Colors.white,fontSize: 20)
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 280,
              child: ListView.separated(
                itemCount: trandingRecipes.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) {
                  return const SizedBox(width: 16);
                },
                itemBuilder: (context, index) {
                  final recipe = trandingRecipes[index];
                  return InkWell(
                    onTap: () {
                      // Navigate to the details screen when a recipe is tapped
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailScreen(recipe: recipe)));
                    },
                    child: RecipeItem(recipe: recipe, onTap: () {}));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Recipes",
                     style: TextStyle(color: Colors.white,fontSize: 20)
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 280,
              child: ListView.separated(
                itemCount: latestRecipes.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) {
                  return const SizedBox(width: 16);
                },
                itemBuilder: (context, index) {
                  final recipe = latestRecipes[index];
                  return InkWell(
                    onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailScreen(recipe: recipe)));
                    },
                    child: RecipeItem(recipe: recipe, onTap: () { 
                      
                     },),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
