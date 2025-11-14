import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {

  final String imageUrl;
  final String? description; //en caso de no pasarlo pone desconocido

  const CustomCardTipo2({super.key, required this.imageUrl, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(      
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35) //redondea el Card
      ), //la imagen se adapta al Card y los bordes se quedan redondeados
      elevation: 10,
      child: Column(
        children: [
          FadeInImage( //signo de carga hasta que cargue la imagen
            image: NetworkImage(
              imageUrl,
              ), width: double.infinity, //tamaño a lo que de el contenedor
              fit: BoxFit.cover,
              placeholder: AssetImage("assets/jar-loading.gif"), //.gift de carga
              fadeInDuration: Duration(milliseconds: 500), //Fade in
          ),
          if(description != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(top: 10, bottom: 15, right: 20),
              child: 
              Text(description ?? 'Desconocido')
            )
        ],
      ),
    );
  }
}