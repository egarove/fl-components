import 'package:flutter/material.dart';

class BienvenidaScreen extends StatelessWidget {

  final Map<String,String> formData;
   
  const BienvenidaScreen({Key? key, required this.formData}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final nombre = formData['nombre'] ?? 'Invitado';
    final apellidos = formData['apellidos'] ?? 'Invitado';

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0), //para que no se pegue tanto a la derecha
            child: CircleAvatar(            
              child: 
                Text(apellidos[0]),
                backgroundColor: const Color.fromARGB(255, 138, 163, 175),
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 84, 190, 111),
        elevation: 50,
      ),
      body: Center(
         child: Column(
           children: [
             Text("¡Bienvenido $nombre!",
             style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
             SizedBox(height: 30,),
             ElevatedButton(onPressed: () => {}, child: Text("Boton Personalizado"),
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white, //color de texto/icono
              elevation: 10, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), //bordes redondeados
              ),
              minimumSize: const Size(180, 50),
              shadowColor: Colors.deepPurpleAccent,
            )
             )
           ],
         ),         
      ),
    );
  }
}