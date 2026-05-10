import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key, required this.scaffold});

  final GlobalKey<ScaffoldState> scaffold;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) => setState(() {
        navDrawerIndex = value;

        final menuItem = appMenuItem[value];

        context.push(menuItem.link);
        widget.scaffold.currentState?.closeDrawer();
      }),
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
          child: Text('Flutter + Material 3'),
        ),

        ...appMenuItem.sublist(0, 3).map((e) {
          return NavigationDrawerDestination(
            icon: Icon(e.icon),
            label: Text(e.title),
          );
        }),

        Padding(
          padding: const EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Text('More options'),
        ),

        ...appMenuItem.sublist(3).map((e) {
          return NavigationDrawerDestination(
            icon: Icon(e.icon),
            label: Text(e.title),
          );
        }),
      ],
    );
  }
}
