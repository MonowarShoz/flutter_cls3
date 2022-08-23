import 'package:flutter/material.dart' as mt;
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_cls3/red_widget.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarScreen extends StatefulWidget {
  final SidebarXController sideBarcontroller;
  const SideBarScreen({Key? key, required this.sideBarcontroller})
      : super(key: key);

  @override
  State<SideBarScreen> createState() => _SideBarScreenState();
}

class _SideBarScreenState extends State<SideBarScreen> {
  // final  animController = mt.AnimationController(vsync: );
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.sideBarcontroller,
        builder: (context, child) {
          final String pageTitle =
              _getTitleByIndex(widget.sideBarcontroller.selectedIndex);
          switch (widget.sideBarcontroller.selectedIndex) {
            // case 0:
            //   return RedWidget();

            // case 1:
            //   return GreenWidget();

            default:
              return Expanded(child: mt.Container(child: Text('$pageTitle')));
          }
        });
  }

  String _getTitleByIndex(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Person';
      case 2:
        return 'Cabin';

      case 3:
        return 'Office';
      default:
        return 'Not found page';
    }
  }
}

class GreenWidget extends mt.StatelessWidget {
  const GreenWidget({
    mt.Key? key,
  }) : super(key: key);

  @override
  mt.Widget build(mt.BuildContext context) {
    return Expanded(
        child: mt.Container(
      color: Colors.green,
    ));
  }
}
