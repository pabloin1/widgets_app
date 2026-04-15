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
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'progress indicator',
    subTitle: 'generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'snackbar',
    subTitle: 'generales y controlados',
    link: '/snaksbars',
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'animated container',
    subTitle: 'animaciones implícitas',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItems(
    title: 'ui-controls',
    subTitle: 'controladores de ui',
    link: '/ui-controls',
    icon: Icons.control_camera_sharp,
  ),
  MenuItems(
    title: 'tutorial',
    subTitle: 'tutorial de la app',
    link: '/tutorial',
    icon: Icons.school_outlined,
  ),
];
