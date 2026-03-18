import 'package:api/config/router/router_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ...routerconfig.map(
            (route) => ListTile(
              title: Text(route.title),
              subtitle: Text(route.description),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                context.go(route.patch);
              },
            ),
          ),
        ],
      ),
    );
  }
}
