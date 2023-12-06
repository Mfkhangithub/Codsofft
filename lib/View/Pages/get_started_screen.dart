import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/Res/Components/Routs/app_route_name.dart';
import 'package:food_recipe/Res/Components/app_color.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Image(
            image: AssetImage("assets/cook.jpeg"),
          ),
          Center(
          child: FadeInUp(from: 250,
          child: Square(),)
        ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                stops: [
                  0.2,
                  1,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              16,
              MediaQuery.of(context).padding.top + 16,
              16,
              MediaQuery.of(context).padding.bottom + 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  "Cooking &\nDelicious Food Easily",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  "Discover more than 1000 food recipes in your hands and cooking it easily!",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 32),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, AppRouteName.home);
                  },
                  child: Container(
                    height: 66,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Get Started",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              width: 320,
              height: 100,
              decoration: BoxDecoration (
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient (
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[Color(0xffffffff), Color(0x00f0d9d9)],
              stops: <double>[0, 1],
               ),
               ),
              child:  Row(
                children: [
                  Expanded(
                    child: Text(
                      "Welcome to the FOOD APP",
                      style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)
                    ),
                  ),
                ],
              ),
                          );
  }
}