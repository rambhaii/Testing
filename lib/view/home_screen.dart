import 'package:flutter/material.dart';
import 'package:test_by_ram/view/left_side_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      drawer: LeftSideMenue(),
      body: Container(),
    );
  }
}
