// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_cls3/constants.dart';
import 'package:flutter_cls3/second_page.dart';
import 'package:flutter_cls3/third_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Favorite'),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Favorite'),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Favorite'),
              subtitle: Text('login'),
            ),
            //ListTile(),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(
          "sample",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(
              //   builder: (context) {
              //     return SecondPage();
              //   },
              // ));
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return ThirdPage();
                },
              ));
            },
            icon: Icon(
              Icons.person,
            ),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.abc),
            color: Colors.red,
          ),
        ],
      ),
      body: Container(
        color: Colors.green[23],
        width: Appconst.fullHeight(context),
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Appconst.fullHeight(context) / 3,
              width: Appconst.fullWidth(context),
              color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Appconst.name),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ThirdPage();
                        },
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text('Button'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/cargo.png',
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
