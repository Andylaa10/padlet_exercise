import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:padlet_exercise/stories_screen.dart';

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
        ],

      ),
    );
  }
}

//#region title
Widget title() => Padding(
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
            padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: () =>{
                Container(
                  color: Colors.white,
                  height: 20,
                  width: 20,
                ),
              },
            ),
          ),
          Container(
            width: 40,
            height: 50,
            decoration: BoxDecoration(color: Colors.black),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.add_box_outlined),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.favorite),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.send_rounded),
          ),
        ],
      ),
    );
//#endregion

Widget stories() => Container(
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
