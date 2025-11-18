import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    print("se ha pulsado");
    showDialog(
      barrierDismissible: false, // false -> al pulsar fuera del alert NO se cierra
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("Alerta!"),
          content: Column(
            mainAxisSize: MainAxisSize.min, //para que el boton de alerta ocupe el minimo posible
            children: [
              Text("Se ha pulsado el Boton."),
              SizedBox(height: 20),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton( //solo podemos salir del alert pulsando en el boton
              onPressed: () => Navigator.pop(context),
              child: Text("Cerrar"), 
        )           
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Alert", style: TextStyle(fontSize: 26),),
          ),
          onPressed: () => displayDialog(context),
         )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close_rounded),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}