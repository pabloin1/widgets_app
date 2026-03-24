import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const List<MenuItems> appMenuItem = [
  MenuItems(
    title: 'Buttons Screen',
    subTitle: 'Diferentes botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'tarjetas',
    subTitle: 'contenedor estilizado',
    link: '/card',
    icon: Icons.credit_card,
  ),
];
