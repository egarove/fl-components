import 'package:flutter/material.dart';
import "dart:math";

class ContainerScreen extends StatefulWidget {
   
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {

  //_propiedades privadas
  double _width = 50; 
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius =  BorderRadiusGeometry.circular(60);

  List<Color> colores = [Colors.amber, Colors.blueAccent, Colors.lightGreenAccent, Colors.pinkAccent, Colors.black, Colors.deepPurple];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Container"),
      ),
      body: Center(
         child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration( //para decorar el container
            borderRadius: _borderRadius,
            color: _color, //TODO LO QUE SEA ESTILO DENTRO DE DECORATION
          ),
         ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new),
        onPressed: (){
          //_width = Random().nextInt(300).toDouble() +50;
          _width = _width + 5;
          _height = _height +5;  
          _color = colores[Random().nextInt(colores.length)];
          setState(() {            
          });      
        },
      ),

    );
  }
}