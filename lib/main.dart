import 'package:flutter/material.dart';
import 'package:padlet_exercise/grid_screen.dart';
import 'package:padlet_exercise/scrollable_list_screen.dart';
import 'package:padlet_exercise/stories_screen.dart';

import 'front_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrontScreen(),
      //home: ScrollableListScreen(),
      //home: GridScreen(),
      //home: StoriesScreen(),
    );
  }
}

