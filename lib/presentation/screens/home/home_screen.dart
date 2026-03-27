import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('widgets + material 3')),
      body: ListView.builder(
        itemCount: appMenuItem.length,
        itemBuilder: (context, index) {
          final menuItems = appMenuItem[index];
          return CustomListTile(menuItems: menuItems);
        },
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.menuItems});

  final MenuItems menuItems;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItems.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary),
      title: Text(menuItems.title),
      onTap: () {
        //todo: navegar a otra pantalla
        Navigator.pushNamed(context, menuItems.link);
      },
    );
  }
}
