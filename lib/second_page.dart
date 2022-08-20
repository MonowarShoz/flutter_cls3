import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_cls3/constants.dart';

class SecondPage extends StatefulWidget {
  final String username;
  final String password;
  const SecondPage({Key? key, required this.username, required this.password}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
      body: Center(
        child: Text(''),
      ),
    );
  }
}


