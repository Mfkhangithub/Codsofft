class RecipeModel {
  final String name;
  final String image;
  final String category;
  final String duration;
  final String serving;
  final List<String> ingredients;
  final List<String> instructions;
  final List<String> cook;
  final List<String> optionalAdditions;
  final List<String> serve;


  RecipeModel({
    required this.name,
    required this.image,
    required this.category,
    required this.duration,
    required this.serving,
    required this.ingredients,
    required this.instructions,
    required this.optionalAdditions,
    required this.cook,
    required this.serve,

  });
}

// Sample data
final trandingRecipes = [
  RecipeModel(
    name: "Shrimp Sushi Bowls",
    image: "assets/shrimp_sushi_bowls.jpeg",
    category: "Seafood",
    duration: "1 Hour",
    serving: "2 Seving",
    ingredients: [
      '2 cups sushi rice',
      '1/4 cup rice vinegar',
      '2 tablespoons sugar',
      '1 teaspoon salt',
      '1 pound shrimp, peeled and deveined',
      '2 tablespoons soy sauce',
      '1 tablespoon sesame oil',
      '1 tablespoon vegetable oil',
      '1 cucumber, thinly sliced',
      '1 avocado, sliced',
      '2 carrots, julienned',
      '1/4 cup pickled ginger',
      '1/4 cup soy sauce (for serving)',
      '2 tablespoons sesame seeds (for garnish)',
      'Nori sheets, cut into thin strips (optional)',
    ],
    instructions: [
      '1. Prepare Sushi Rice:',
      '   - Rinse sushi rice under cold water until the water runs clear.',
      '   - Cook the rice according to the package instructions.',
      '   - In a small bowl, mix rice vinegar, sugar, and salt. Microwave for 20-30 seconds until sugar dissolves.',
      '   - While the rice is still warm, gently fold in the vinegar mixture. Allow it to cool.',
      '2. Marinate Shrimp:',
      '   - In a bowl, combine shrimp, soy sauce, and sesame oil. Let it marinate for about 10-15 minutes.',
      '   - Heat vegetable oil in a pan over medium-high heat. Cook the shrimp for 2-3 minutes per side or until they turn pink and opaque. Set aside.',
      '3. Assemble Bowls:',
      '   - Divide the sushi rice among serving bowls.',
      '   - Arrange cooked shrimp, cucumber slices, avocado slices, julienned carrots, and pickled ginger on top of the rice.',
      '4. Garnish:',
      '   - Drizzle with additional soy sauce if desired.',
      '   - Garnish with sesame seeds and nori strips.',

    ],
    optionalAdditions: [
      'Add sliced radishes, edamame, or your favorite sushi ingredients.',
      'Serve with wasabi and extra pickled ginger on the side.',
      
    ],
    cook: [
         'Total estimated time: 1 hour'
    ],
       serve: [
        'Serve the Shrimp Sushi Bowls immediately and enjoy!'
              ],
  ),
   RecipeModel(
    name: "Crispy Honey Ginger Salmon Bowl",
    image: "assets/crispy_honey_ginger_salmon_bowl.png",
    category: "Seafood",
    duration: "1 Hour",
    serving: "3 Seving",
    ingredients: [
                '4 salmon fillets',
                'Salt and pepper to taste',
                '2 tablespoons olive oil',
                '3 tablespoons honey',
                '2 tablespoons soy sauce',
                '1 tablespoon grated ginger',
                '2 cloves garlic, minced',
              ],
    instructions: [
                'Preheat your oven to 400°F (200°C).',
                'Pat the salmon fillets dry with paper towels and season both sides with salt and pepper.',
                'In a small bowl, whisk together honey, soy sauce, grated ginger, and minced garlic.',
                'Heat olive oil in an oven-safe skillet over medium-high heat.',
                'Sear the salmon fillets, skin side down, for 2-3 minutes until the skin is crispy.',
                'Flip the fillets and brush them with the honey-ginger mixture.',
                'Transfer the skillet to the preheated oven and bake for about 10 minutes or until the salmon is cooked through and flakes easily with a fork.',
                'While the salmon is baking, prepare your bowl components.',
                'Cook brown rice or quinoa according to package instructions.',
                'Steam or roast your favorite vegetables.',
                'Slice avocado.',
                'Place a serving of brown rice or quinoa in each bowl.',
                'Top with steamed/roasted vegetables, avocado slices, and a honey-ginger salmon fillet.'
              ],
    optionalAdditions: [

    ],
     cook: [
      'Preheat oven: 400°F (200°C)',
      'Sear salmon: 2-3 minutes',
      'Bake in the oven: 10 minutes',
      
    ],
       serve: [
        'Feel free to customize the bowl with your favorite toppings and vegetables.'
              ], 
  ),
  RecipeModel(
    name: "Grilled Thai Red Curry Shrimp",
    image: "assets/grilled_thai_red_curry_shrimp.jpeg",
    category: "Seafood",
    duration: "1 Hour",
    serving: "2 Seving",
     ingredients:[
                '1 pound shrimp, peeled and deveined',
                '2 tablespoons Thai red curry paste',
                '1 tablespoon fish sauce',
                '1 tablespoon soy sauce',
                '1 tablespoon honey',
                '1 tablespoon vegetable oil',
                '1 tablespoon lime juice',
                '2 cloves garlic, minced',
                'Skewers for grilling',
              ],
    instructions: [
                '1. Marinate Shrimp:',
                '   - Combine shrimp with Thai red curry paste, fish sauce, soy sauce, honey, vegetable oil, lime juice, and minced garlic.',
                '   - Marinate in the refrigerator for at least 30 minutes.',
                '2. Preheat the Grill:',
                '   - Preheat the grill to medium-high heat.',
                '3. Skewer the Shrimp:',
                '   - Thread marinated shrimp onto skewers.',
                '4. Grill the Shrimp:',
                '   - Grill for 2-3 minutes per side until opaque.',
                '   - Baste with remaining marinade during grilling.',
                '5. Optional Additions:',
                '   - Serve with Thai red curry sauce for dipping.',
                '   - Garnish with cilantro and lime wedges.',
                '6. Serve:',
                '   - Remove from the grill and serve hot.',
              ],
    optionalAdditions: [
                'Serve with steamed jasmine rice or rice noodles.',
                'Garnish with chopped fresh cilantro and a squeeze of lime.',
              ],
     cook: [
                'Marination: At least 30 minutes',
                'Grill Time: 2-3 minutes per side',
              ],
       serve: [
                'Serve immediately while hot and flavorful.',
              ],
  ),
  // ... (add more recipes)
  
];

final latestRecipes = [
  RecipeModel(
    name: "Crispy Honey Ginger Salmon Bowl",
    image: "assets/crispy_honey_ginger_salmon_bowl.png",
    category: "Seafood",
    duration: "1 Hour",
    serving: "3 Seving",
    ingredients: [
              '4 salmon fillets',
              'Salt and pepper to taste',
              '2 tablespoons olive oil',
              '3 tablespoons honey',
              '2 tablespoons soy sauce',
              '1 tablespoon grated ginger',
              '2 cloves garlic, minced',
            ],
    instructions: [
              '1. Preheat your oven to 400°F (200°C).',
              '2. Pat the salmon fillets dry with paper towels.',
              '3. Season both sides with salt and pepper.',
              '4. In a small bowl, whisk together honey, soy sauce, grated ginger, and minced garlic.',
              '5. Heat olive oil in an oven-safe skillet over medium-high heat.',
              '6. Sear the salmon fillets, skin side down, for 2-3 minutes until the skin is crispy.',
              '7. Flip the fillets and brush them with the honey-ginger mixture.',
              '8. Transfer the skillet to the preheated oven and bake for about 10 minutes or until the salmon is cooked through and flakes easily with a fork.',
              '9. While the salmon is baking, prepare your bowl components.',
              '10. Cook brown rice or quinoa according to package instructions.',
              '11. Steam or roast your favorite vegetables.',
              '12. Slice avocado.',
              '13. Place a serving of brown rice or quinoa in each bowl.',
              '14. Top with steamed/roasted vegetables, avocado slices, and a honey-ginger salmon fillet.',
            ],
    optionalAdditions: [
              'Add sliced radishes, edamame, or your favorite sushi ingredients.',
              'Serve with wasabi and extra pickled ginger on the side.',
            ],
     cook: [
              'Total Cooking Time: Approximately 15 minutes (10 minutes in the oven and additional time for preparation)',
            ],
       serve: [
              'Serve the Crispy Honey Ginger Salmon Bowls immediately and enjoy!',
            ],
  ),
  // ... (add more recipes)
   RecipeModel(
    name: "Beef Bibimbap with Triple Egg",
    image: "assets/beef_bibimbap_recipe.jpeg",
    category: "Beef",
    duration: "1 Hour",
    serving: "3 Seving",
     ingredients: [
                '1 cup cooked rice',
                '200g beef, thinly sliced',
                '1 carrot, julienned',
                '1 zucchini, julienned',
                '1 cup bean sprouts',
                '3 eggs (1 fried, 2 for poaching)',
                '2 tablespoons vegetable oil',
                '2 tablespoons soy sauce',
                '1 tablespoon sesame oil',
                'Salt and pepper to taste',
                'Sesame seeds for garnish',
                'Optional: Gochujang (Korean red pepper paste) for extra spice',
              ],
    instructions: [
                '1. Prepare the Rice:',
                '   - Cook rice according to package instructions. Set aside.',
                '',
                '2. Cook the Beef:',
                '   - Heat 1 tablespoon of vegetable oil in a pan over medium heat.',
                '   - Add thinly sliced beef to the pan.',
                '   - Season with salt and pepper, and cook until browned and cooked through.',
                '   - Drizzle with soy sauce and sesame oil. Mix well.',
                '',
                '3. Prepare Vegetables:',
                '   - In the same pan, add another tablespoon of vegetable oil.',
                '   - Stir-fry julienned carrots and zucchini until slightly tender.',
                '   - Blanch bean sprouts in boiling water for a minute. Drain.',
                '',
                '4. Fry the Eggs:',
                '   - Fry one egg sunny-side-up until the yolk is cooked to your liking.',
                '',
                '5. Poach the Eggs:',
                '   - Bring a pot of water to a gentle simmer.',
                '   - Crack two eggs into the simmering water and poach until whites are set but yolks are still runny.',
                '',
                '6. Assemble the Bibimbap:',
                '   - In a serving bowl, place a portion of cooked rice.',
                '   - Arrange cooked beef, sautéed vegetables, and poached eggs on top of the rice.',
                '',
                '7. Garnish:',
                '   - Place the fried egg on one side of the bowl.',
                '   - Sprinkle sesame seeds over the dish.',
                '',
              ],
    optionalAdditions: [
                '   - Kimchi',
                '   - Sliced cucumbers',
                '   - Shredded nori (seaweed)',
              ],
     cook: [
                '   - Approximately 30-40 minutes',
              ],
       serve: [
               '    - Serve the Beef Bibimbap with Triple Egg immediately.',
                '   - Optionally, add a dollop of Gochujang for extra flavor.',
              ],
  ),
  RecipeModel(
    name: "Grilled Chicken Salad + Homemade Sweet Onion Dressing",
    image: "assets/grilled_chicken_salad.jpeg",
    category: "Chicken",
    duration: "1 Hour",
    serving: "2 Seving",
     ingredients:  [
                'Grilled Chicken Breast',
                'Mixed Salad Greens (lettuce, spinach, arugula, etc.)',
                'Cherry Tomatoes, halved',
                'Cucumber, sliced',
                'Red Onion, thinly sliced',
                'Avocado, sliced',
                'Feta Cheese, crumbled (optional)',
                'Olive Oil',
                'Salt and Pepper to taste',
              ],
    instructions: [
                '1. Grill the Chicken Breast:',
                '   - Season the chicken breast with salt and pepper.',
                '   - Grill until fully cooked with a nice char. Let it rest and slice into strips.',
                '2. Prepare the Salad:',
                '   - Combine mixed salad greens, cherry tomatoes, cucumber, red onion, and avocado.',
                '3. Assemble the Salad:',
                '   - Add grilled chicken strips on top of the salad.',
                '4. Make the Homemade Sweet Onion Dressing:',
                '   - In a bowl, whisk together olive oil, red wine vinegar, Dijon mustard, honey, and minced sweet onion.',
                '   - Season with salt and pepper.',
                '5. Drizzle Dressing Over Salad:',
                '   - Pour the dressing over the salad.',
              ],
    optionalAdditions: [
                '   - Sprinkle crumbled feta cheese on top for extra flavor.',
    ],
     cook: [
                'Grilling Chicken: Approximately 15-20 minutes',
                'Assembling and preparing salad: 10 minutes',
                'Making the dressing: 5 minutes',
              ],
       serve: [
                'Toss the salad gently to coat. Serve immediately.',
                'Serve the Grilled Chicken Salad as a refreshing and nutritious main course.',
              ],
  ),
];
