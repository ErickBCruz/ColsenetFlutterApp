import 'package:colsenet/Screens/add_event.dart';
import 'package:colsenet/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../Themes/app_theme.dart';
import 'Screens/home_map.dart';
import 'Screens/register.dart';
import 'Screens/markers_map.dart';


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
          MarkersMap()
        ],
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.menu,
        backgroundColor: AppColor.secundary,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.person),
            label: 'Ingresar',
            backgroundColor: AppColor.secundary,
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
            backgroundColor: AppColor.secundary,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Register()),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.help),
            label: 'Ayuda',
            backgroundColor: AppColor.secundary,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddEvent()),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add_circle),
            label: 'Agregar evento',
            backgroundColor: AppColor.secundary,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddEvent()),
              );
            },
          ),
        ],
      ),
    );
  }
}