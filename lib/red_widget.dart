import 'package:flutter/material.dart';

class RedWidget extends StatelessWidget {
  const RedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.red,
    ));
  }
}
