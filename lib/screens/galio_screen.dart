import 'package:flutter/material.dart';

class GalioScreen extends StatelessWidget {
   
  const GalioScreen({Key? key}) : super(key: key);

  final String description = "Galio es un coloso de piedra que vigila las afueras de Demacia y"+
         "protege a su ciudad de la magia. Fue construido por el escultor Durand para ser un"+
         "baluarte contra los magos enemigos, permanece inmóvil hasta que la presencia de magia"+
         "poderosa lo despierta. Sus habilidades le permiten infligir daño masivo en área,"+
         "mientras que su escudo le otorga defensa y control de masas a través de una provocación."+
         "Su definitiva (Entrada heroica) le permite volar hacia un aliado, lo que le otorga reducción de"+
         "daño y crea una onda de choque que derriba a los enemigos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campeones: Galio'),
        backgroundColor: Color.fromARGB(255, 25, 45, 32) //0xFF antes del color a usar
      ),
      backgroundColor: Color(0xFF121212),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Text("Galio Info",
            style: TextStyle(
              fontSize: 24,
              color: const Color.fromARGB(255, 89, 152, 133),
              )
            ),
          Image.network(
            "https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Galio_4.jpg",
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          Text(description,
            style: TextStyle(
              fontSize: 24,
              color: const Color.fromARGB(255, 89, 152, 133),
            ) 
          ,)
        ],
      ),
    );
  }
}