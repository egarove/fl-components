import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatares"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0), //para que no se pegue tanto a la derecha
            child: CircleAvatar(            
              child: 
                Text("EGV"),
                backgroundColor: const Color.fromARGB(255, 138, 163, 175),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          backgroundImage: NetworkImage("https://raw.communitydragon.org/pbe/plugins/rcp-be-lol-game-data/global/default/assets/characters/tahmkench/skins/skin01/images/tahmkench_splash_centered_1.jpg"),
          maxRadius: 120, //tamaño del avatar
         ),
      ),
    );
  }
}