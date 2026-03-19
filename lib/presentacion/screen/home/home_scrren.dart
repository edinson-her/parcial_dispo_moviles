import 'package:api/presentacion/widget/layout/drawer_custom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: DrawerCustom(),
      body: Column(
        children: [
          SizedBox(height: 120),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "PRIMER PARCIAL \n DISPOSITIVOS MOVILES",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Text(
                    "192363 - EDINSON ANDRES HERNANDEZ ORTEGA ",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "192376 - JOHAN SEBASTIAN QUINTERO CASTILLA",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.all(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/home_img.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
