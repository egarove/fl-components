import 'package:flutter/material.dart';

class MordekaiserScreen extends StatelessWidget {
   
  const MordekaiserScreen({Key? key}) : super(key: key);
  
  final String description = "Mordekaiser es un sanguinario señor de"+
   "la guerra proveniente de tiempos olvidados al que los siglos han "+
   "visto nacer en tres ocasiones y morir en otras dos. Utiliza sus "+
   "poderes necrománticos para atar almas perdidas a una vida eterna"+
   " a su servicio. Ya no quedan muchos que recuerden sus conquistas "+
   "iniciales o comprendan el alcance de su poder. Aquellos que lo"+
   " hacen, no obstante, temen con angustia el día en el que regrese "+
   "para alzarse sobre los vivos y los muertos.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campeones: Mordekaiser'),
        backgroundColor: Color(0xFF6bb39b) //0xFF antes del color a usar
      ),
      body: Column(
        children: [
          Text("Mordekaiser Info"),
          //AQUI VA LA IMAGEN
          Text(description)
        ],
      ),
    );
  }
}