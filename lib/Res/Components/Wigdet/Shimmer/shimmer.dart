import 'package:flutter/material.dart';
import 'package:food_recipe/Res/Components/Wigdet/Shimmer/shimmerwidget.dart';

class ShimmerPage extends StatefulWidget {
  const ShimmerPage({super.key});

  @override
  State<ShimmerPage> createState() => _ShimmerPageState();
}

class _ShimmerPageState extends State<ShimmerPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index){
        return buildFoodShimmer();
      });
  }

   Widget buildFoodShimmer()=> ListTile(
    title: ShimmerWidget.rectangular(height: 50),
   );
}