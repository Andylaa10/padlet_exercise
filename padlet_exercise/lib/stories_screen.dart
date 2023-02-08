import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          20,
          (index) => Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/person$index.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(color: Colors.grey, width: 2)),
            ),
          ),
        ),
      ),
    );
  }
}

/**
 * return Scaffold(
    body: Scrollbar(
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: List.generate(
    20,
    (index) => Card(
    child: Image.asset('assets/person$index.jpg', ),
    clipBehavior: Clip.antiAlias,
    ),
    ),
    ),
    ),
    );
    }
 */
