import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainBodyScreen extends StatelessWidget {
  const MainBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 535,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Scrollbar(
          child: ListView(
            children: List.generate(
              20,
              (index) => Column(
                children: [
                  Row(children: [

                  ]),
                  ListTile(
                    tileColor: Colors.black,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/person$index.jpg'),
                    ),
                    title: Text(
                      'Person $index',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  Card(
                    child: Image.asset('assets/person$index.jpg'),
                    clipBehavior: Clip.antiAlias,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
