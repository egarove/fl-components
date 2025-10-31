import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Galio','Nautilus','Mordekaiser','Skarner'];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    //hay que eliminar el const del Scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Campeones'),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          title: Text(options[index]),
          onTap: () {
            final campeon = options[index];
            print(campeon);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      )
    );
  }
}