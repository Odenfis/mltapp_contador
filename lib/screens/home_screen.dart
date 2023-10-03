import 'package:flutter/material.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //en una statefulwidget se declara variables antes de su build
  int contador = 20;

  @override
  Widget build(BuildContext context) {
    //Declaracion de variables
    const fontSizeVar22 = TextStyle(fontSize: 22);
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Titulo de la App'),
        elevation: 10,
      ),
      backgroundColor:Colors.cyanAccent,      
      body:  Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('Clic para cambiar los datos del contador',style: fontSizeVar22,textAlign: TextAlign.center,),
              Text('$contador',style: fontSizeVar22,)
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
        
          setState(() {contador++;});
        },
        child: const Icon(Icons.plus_one),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          
     
    );
  }
}