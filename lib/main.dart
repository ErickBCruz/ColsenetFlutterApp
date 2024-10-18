import 'package:flutter/material.dart';
import 'Screens/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Colsenet",
      home: Login(),
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
        title: const Text("text"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://staticfiles.warthunder.com/upload/image/0_2024/7_July/F14/news_main_f14a_iriaf_mar_dfd82b383a03bee7b31a833164657dbc.jpg")
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://staticfiles.warthunder.com/upload/image/0_2024/7_July/F14/news_main_f14a_iriaf_mar_dfd82b383a03bee7b31a833164657dbc.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network("https://staticfiles.warthunder.com/upload/image/0_2024/7_July/F14/news_main_f14a_iriaf_mar_dfd82b383a03bee7b31a833164657dbc.jpg"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const ElevatedButton(onPressed: null, child: Text("Elevated"))
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const FilledButton(onPressed: null, child: Text("Filled"))
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const OutlinedButton(onPressed: null, child: Text("Outline"))
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const TextButton(onPressed: null, child: Text("Text"))
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.add_moderator), label: const Text("variacion"),)
          ),
          cuerpo(),
        ],
      )
    );
  }
}

Widget cuerpo(){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://staticfiles.warthunder.com/upload/image/0_2024/7_July/F14/news_main_f14a_iriaf_mar_dfd82b383a03bee7b31a833164657dbc.jpg"),
      fit: BoxFit.cover,
      )
    ),
    child: const Text("hola"),
  );
}