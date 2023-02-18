import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool clicked = true;

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
                    SizedBox(
                      height: 50,
                      width: 344,
                      child: ListTile(
                        tileColor: Colors.black,
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/person$index.jpg'),
                        ),
                        title: Text(
                          'Person $index',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ]),
                  Card(
                    child: InkWell(
                      onDoubleTap: () {
                        //Make heart red
                        //TODO
                      },
                      child: Image.asset('assets/person$index.jpg'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child: IconButton(
                            icon: (clicked == false)
                                ? Icon(Icons.favorite_border)
                                : Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                            color: Colors.white,
                            onPressed: () => {print(clicked)}),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.comment,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.send_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 170,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
