import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes de Flutter'),
        elevation: 50,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.markunread_sharp),
            title: Text('ruta'),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => ListviewScreen(),);
              // Navigator.pushReplacement(context, route); //push añade la flecha para poder volver atras
              // Navigator.pushReplacement(context, route); //pushReplacement borra la flecha para poder volver atras
              Navigator.pushNamed(context, "card"); //me permite usar solo el nombre de la ruta
            },
          ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 5,
      )
    );
  }
}