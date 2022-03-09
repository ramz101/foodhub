import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    // TODO: Apply Home widget
    return MaterialApp(
      // 3
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: const Home(),
    );
  }
}