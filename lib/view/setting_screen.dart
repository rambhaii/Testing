import 'package:flutter/material.dart';
import 'package:test_by_ram/view/left_side_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Setting")),
      ),
      body: Container(
        child: Center(child: Text("Setting Page")),
      ),
    );
  }
}
