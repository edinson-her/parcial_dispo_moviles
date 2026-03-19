import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterModel {
  String name;
  String title;
  String description;
  String patch;
  GoRouterWidgetBuilder widget;
  IconData? icon;

  RouterModel({
    required this.name,
    required this.title,
    required this.description,
    required this.patch,
    required this.widget,
    this.icon,
  });
}
