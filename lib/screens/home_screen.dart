import 'package:flutter/material.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Titulo de la App'),
        elevation: 10,
      ),
      backgroundColor:Colors.cyanAccent,      
      body: const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Clic para cambiar los datos del contador',style: TextStyle(fontSize: 22)),
              Text('20',style: TextStyle(fontSize: 40),)
            ],
          ),
      )      
     
    );
  }
}