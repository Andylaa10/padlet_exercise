import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/stories_screen.dart';

import 'bottom_navigation_bar.dart';
import 'main_body_screen.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title(),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          StoriesScreen(),
          MainBodyScreen(),
        ],
      ),
      bottomNavigationBar:
      BottomNavigation(),
    );
  }

  Widget title() =>
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            Container(
              child:
              Text('Instagram', style: GoogleFonts.leckerliOne(fontSize: 30)),
              height: 40,
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: PopupMenuButton(
                color: Color.fromRGBO(33, 29, 29, 1.0),
                offset: Offset(-300, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20),
                  ),
                ),
                itemBuilder: (context) =>
                [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Text(
                          'Følger',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          color: Colors.black,
                          width: 60,
                        ),
                        Icon(Icons.people_outline),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Text(
                          'Favoritter',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          color: Colors.black,
                          width: 40,
                        ),
                        Icon(Icons.star_border),
                      ],
                    ),
                  ),
                ],
                child: Icon(Icons.keyboard_arrow_down),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.black),
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.add_box_outlined), onPressed: () {},),
            ),
            Container(
              child: IconButton(icon: Icon(Icons.favorite), onPressed: () {},),
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.send_rounded), onPressed: () {},),
            ),
          ],
        ),
      );
}
/**
 * Widget stories() => Container(
    padding: EdgeInsets.only(left: 15),
    color: Colors.black,
    height: 100,
    child: Row(
    children: [
    Flexible(
    child: Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
    color: Colors.grey,
    image: DecorationImage(
    image: AssetImage('assets/brille.jpg'),
    fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.all(
    Radius.circular(50),
    ),
    border: Border.all(color: Colors.grey, width: 2)),
    ),
    ),
    Flexible(
    child: Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
    color: Colors.grey,
    image: DecorationImage(
    image: AssetImage('assets/brille.jpg'),
    fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.all(
    Radius.circular(50),
    ),
    border: Border.all(color: Colors.grey, width: 2)),
    ),
    ),
    ),
    Flexible(
    child: Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
    color: Colors.grey,
    image: DecorationImage(
    image: AssetImage('assets/brille.jpg'),
    fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.all(
    Radius.circular(50),
    ),
    border: Border.all(color: Colors.grey, width: 2)),
    ),
    ),
    ),
    Flexible(
    child: Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
    color: Colors.grey,
    image: DecorationImage(
    image: AssetImage('assets/brille.jpg'),
    fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.all(
    Radius.circular(50),
    ),
    border: Border.all(color: Colors.grey, width: 2)),
    ),
    ),
    ),
    ],
    ),
    );
 */

/**
 * PopupMenuItem(
    child: Column(
    children: [
    Row(
    children: [
    Text(
    'Følger',
    style: TextStyle(color: Colors.white),
    ),
    Container(
    width: 60,
    color: Colors.black,
    ),
    Icon(Icons.people_rounded)
    ],
    ),
    Row(
    children: [
    Text(
    'Favoritter',
    style: TextStyle(color: Colors.white),
    ),
    Icon(Icons.star_border),
    ],
    ),
    ],
    ),
    ),
 */
