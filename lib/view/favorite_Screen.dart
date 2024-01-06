import 'package:flutter/material.dart';
import 'package:test_by_ram/view/left_side_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Favorite")),
      ),
      body: Container(
        child: Center(child: Text("Favorite Page")),
      ),
    );
  }
}
