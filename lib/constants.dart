import 'package:flutter/cupertino.dart';

class Appconst {
  static const String name = "Flutter Course";

  static double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  static double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
