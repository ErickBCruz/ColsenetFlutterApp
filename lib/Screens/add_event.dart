import 'package:flutter/material.dart';
import '../Themes/app_theme.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.primary,
              AppColor.secundary,
            ],
            stops: [
              0.5,
              1.0,
            ]
          )
        ),
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              addingEvent(),
            ]
        )
        )  
      )       
    );
  }
}

Widget addingEvent(){
  return const Text("En proceso :(", style: TextStyle(color: AppColor.secundary, fontSize: 25.0, fontWeight: FontWeight.bold),);
}