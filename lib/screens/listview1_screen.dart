import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {

  final options = const['Galio','Nautilus','Mordekaiser','Skarner'];
   
  const ListviewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    //hay que eliminar el const del Scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Campeones'),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        children: [
          /*ListTile(
            leading: Icon(Icons.accessibility_rounded),
            title: Text("Hola Mundo1"),
          ),*/
          ...options.map((e)=> 
            ListTile(
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            iconColor: Colors.amber,
            title: Text(e),),
          ).toList()
        ],
      )
    );
  }
}