import 'package:api/config/router/router_model.dart';
import 'package:api/presentacion/screen/films/films_screen.dart';
import 'package:api/presentacion/screen/films/films_detail_screen.dart';
import 'package:api/presentacion/screen/home/home_scrren.dart';
import 'package:flutter/material.dart';

List<RouterModel> routerconfig = [
  RouterModel(
    name: 'Home',
    title: 'Home',
    description: 'Pantalla principal',
    patch: '/',
    widget: (context, state) => const HomeScreen(),
    icon: Icons.home,
  ),
  RouterModel(
    name: 'Films',
    title: 'Films',
    description: 'Pantalla de películas',
    patch: '/films',
    widget: (context, state) => const FilmsScreen(),
    icon: Icons.movie,
  ),
];
