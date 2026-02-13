import 'package:flutter/material.dart';

class NavItem {
  final String route;
  final Widget icon;
  final Widget activeIcon;

  const NavItem(this.route, this.icon, this.activeIcon);
}
