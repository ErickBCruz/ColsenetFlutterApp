import 'package:flutter/material.dart';
import '../Themes/app_theme.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              register(),
              const SizedBox(height: 10,),
              userField(),
              passwordField(),
              repeatPasswordField(),
              const SizedBox(height: 10,),
              registerButton(),
            ]
        )
        )  
      )       
    );
  }
}

Widget register(){
  return const Text("Registro", style: TextStyle(color: AppColor.secundary, fontSize: 25.0, fontWeight: FontWeight.bold),);
}

Widget userField(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "Correo electrónico",
        fillColor: Colors.white,
        filled: true,
      ),
    )
  );
}

Widget passwordField(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
    )
  );
}

Widget repeatPasswordField(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Repetir contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
    )
  );
}

Widget registerButton(){
  return FilledButton.tonal(
    onPressed: () {
    },
    style: FilledButton.styleFrom(
      backgroundColor: AppColor.secundary,
      foregroundColor: Colors.white, 
    ),
    child: const Text("Registrar"),
  );
}