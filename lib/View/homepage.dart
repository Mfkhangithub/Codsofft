import 'package:flutter/material.dart';
import 'package:food_recipe/View/drawer.dart';
import 'package:food_recipe/View/ui.dart';

class AddminPage extends StatefulWidget {
  const AddminPage({super.key});

  @override
  State<AddminPage> createState() => _AddminPageState();
}

class _AddminPageState extends State<AddminPage> {
  // int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff264a52),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Admin Dashboard', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: buildGridView(context),
      ),
      drawer: DrawerPage(),
    );
  }
}