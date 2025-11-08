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
        backgroundColor: Color(0xFF7c701f) //0xFF antes del color a usar
      ),
      body: Column(
        children: [
          Text("Nautilus Info"),
          //AQUI VA LA IMAGEN
          Text(description)
        ],
      ),
    );
  }
}