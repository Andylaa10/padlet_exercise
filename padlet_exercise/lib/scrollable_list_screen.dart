import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollableListScreen extends StatelessWidget {
  const ScrollableListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView(
            children: List.generate(
              20,
              (index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/person$index.jpg'),
                ),
                title: Text('Person $index'),
              ),
            ),
        ),
      ),
    );
  }
}

/**
 * children: List.generate(
    19,
    (index) => ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage('asset/person$index.jpg'),
    ),
    ),
    ),
 */
