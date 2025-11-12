import 'package:flutter/material.dart';

class NautilusScreen extends StatelessWidget {
   
  const NautilusScreen({Key? key}) : super(key: key);
  
  final String description = 'El gigante acorazado Nautilus, una leyenda '+
  'solitaria tan antigua como los pecios de Aguas Estancadas, recorre las '+
  'turbias aguas que rodean las costas de las Islas de la Llama Azul. '+
  'Impulsado por una traición olvidada, ataca con su enorme ancla sin '+
  'previo aviso para ayudar a los desdichados y arrastrar a los'+
  ' avariciosos a su perdición. Se dice que viene a por los que olvidan '+
  'pagar el “tributo de Aguas Estancadas”, y se los lleva con él bajo las '+
  'olas. Un recordatorio inexorable de que nadie se escapa de las '+
  'profundidades.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campeones: Nautilus'),
        backgroundColor: Color.fromARGB(255, 184, 138, 38) //0xFF antes del color a usar
      ),
      backgroundColor: Color.fromARGB(255, 71, 71, 71),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Text("Nautilus Info",
            style: TextStyle(
              fontSize: 24,
              color: const Color.fromARGB(255, 199, 162, 31),
              )
            ),
          Image.network("https://raw.communitydragon.org/pbe/plugins/rcp-be-lol-game-data/global/default/assets/characters/nautilus/skins/skin03/images/nautilus_splash_centered_3.jpg",
          width: MediaQuery.of(context).size.width * 0.9,),
          Text(description,
            style: TextStyle(
              fontSize: 16,
              color: const Color.fromARGB(255, 217, 177, 47),
            ) 
          ,)
        ],
      ),
    );
  }
}