import 'package:api/presentacion/widget/layout/drawer_custom.dart';
import 'package:flutter/material.dart';

class FilmsScreen extends StatelessWidget {
  const FilmsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FILMS")),
      drawer: DrawerCustom(),
      body: Center(child: Text("FILMS SCREEN")),
    );
  }
}
