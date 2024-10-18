import 'package:colsenet/Screens/login.dart';
import 'package:flutter/material.dart';
//import 'Screens/login.dart';
import 'Screens/home_map.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../Themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Colsenet",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: const Text('Colsenet', style: TextStyle(color: AppColor.secundary)),
      ),
      body: const Stack(
        children: [
          MapPage()
        ],
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.menu,
        backgroundColor: AppColor.secundary,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.person),
            label: 'Ingresar',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.person_add),
            label: 'Registro',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.info),
            label: 'Ayuda',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
      ),
    );
  }
}