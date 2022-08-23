import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_cls3/sidebar_screen.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  final List<SideBarModel> _sideBarItemList = [
    SideBarModel(
      label: 'Home',
      icon: Icons.home,
    ),
    SideBarModel(label: 'Person', icon: Icons.person),
    SideBarModel(label: 'Cabin', icon: Icons.cabin),
    SideBarModel(
      label: 'Office',
      icon: Icons.local_post_office,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            SidebarX(
                controller: _controller,
                extendedTheme: const SidebarXTheme(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(left: 10),
                ),
                items: _sideBarItemList
                    .map((item) => SidebarXItem(
                          icon: item.icon,
                          label: item.label,
                        ))
                    .toList()
                // SidebarXItem(
                //     icon: FluentIcons.add_circle_24_filled, label: "ADD"),
                // SidebarXItem(icon: Icons.home, label: 'Home'),
                // SidebarXItem(icon: Icons.person, label: 'Profile'),
                // SidebarXItem(icon: Icons.cabin, label: 'Cabin'),

                ),
            Expanded(
              child: SideBarScreen(
                sideBarcontroller: _controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SideBarModel {
  final String? label;
  final IconData? icon;

  SideBarModel({this.label, this.icon});
}
