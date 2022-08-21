import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_cls3/constants.dart';

class SecondPage extends StatefulWidget {
  final String username;
  final String password;
  const SecondPage({Key? key, required this.username, required this.password})
      : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String? textvalue;

  final dummyData = ["Cat", "Dog", "Cow", "Tiger", "bird"];
  final newDummyData = ["programming Language", "Java", "C", "c", "dart"];

  final List<ListDataModel> list = [
    ListDataModel('First Card', Colors.yellow),
     ListDataModel('second Card', Colors.green),
      ListDataModel('third Card', Colors.red),
       ListDataModel('4th Card', Colors.amber),
        ListDataModel('5th Card', Colors.black),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seccond Page'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Text(widget.username),
            Text(widget.password),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 207, 230, 240),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: SizedBox(
                width: 200,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Comment",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (v) {
                    setState(() {
                      textvalue = v;
                    });
                  },
                ),
              ),
            ),
            textvalue == null
                ? SizedBox.shrink()
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(textvalue!),
                  ),
            // Expanded(
            //   child: ListView(
            //     children: [
            //       ...dummyData.map((item) {
            //         return Text(item);
            //       }).toList(),

            //       // ...dummyData.map((item) {
            //       //   return Text(item);
            //       // }).toList(),
            //     ],
            //   ),
            // ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: list.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 150,
                        height: 40,
                        child: Card(
                          color: list[index].color,
                          elevation: 3,
                          child: Center(child: Text(list[index].title,style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class ListDataModel {
  final String title;
  final Color color;

  ListDataModel(this.title, this.color);
}
