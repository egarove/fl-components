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
        backgroundColor: Color.fromARGB(255, 55, 16, 75) //0xFF antes del color a usar
      ),
      backgroundColor: Color(0xFF121212),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Text("Mordekaiser Info",
            style: TextStyle(
              fontSize: 24,
              color: const Color.fromARGB(255, 84, 23, 124),
              )
            ),
          Image.network("https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Mordekaiser_42.jpg",
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          Text(description,
            style: TextStyle(
              fontSize: 24,
              color: const Color.fromARGB(255, 95, 52, 144),
            ) 
          ,)
        ],
      ),
    );
  }
}