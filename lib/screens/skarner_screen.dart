import 'package:flutter/material.dart';

class SkarnerScreen extends StatelessWidget {
   
  const SkarnerScreen({Key? key}) : super(key: key);

  final String description = 'A Skarner, el colosal brackern ancestral, '+
  'se le rinde culto en Ixtal como uno de los fundadores de su casta'+
  ' soberana, los Yun Tal. Se dedica a proteger su tierra del resto '+
  'del mundo manteniendo la región aislada. Skarner vive en una cámara '+
  'bajo Ixaocan, donde oye las vibraciones de la tierra y detecta '+
  'posibles amenazas. Ahora que más miembros de los Yun Tal empiezan '+
  'a cuestionar el aislamiento autoimpuesto de Ixtal, Skarner está '+
  'cada vez más paranoico, y hará lo que sea por mantener a salvo '+
  'tanto Ixtal como a sus habitantes... a cualquier precio.';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campeones: Skarner'),
        backgroundColor: Color.fromARGB(255, 162, 52, 27) //0xFF antes del color a usar
      ),
      backgroundColor: Color.fromARGB(255, 38, 38, 38),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Text("Nautilus Info",
            style: TextStyle(
              fontSize: 24,
              color: const Color.fromARGB(255, 184, 31, 31),
              )
            ),
          Image.network("https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Skarner_1.jpg",
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          Text(description,
            style: TextStyle(              
              fontSize: 24,
              color: const Color.fromARGB(255, 227, 76, 38),
            ) 
          ,)
        ],
      ),
    );
  }
}