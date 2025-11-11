import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_camera_front_outlined, color: AppTheme.primary,),
            title: Text("Tarjeta"),
            subtitle: Text("Descripcion de la Tarjeta"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {} ,child: Text("Cancelar"),
                  style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(235, 168, 8, 8)),),
                TextButton(onPressed: () {} , child: Text("Aceptar"),
                  style: TextButton.styleFrom(foregroundColor: const Color.fromARGB(235, 14, 146, 21)),),
              ],
            ),
          )
        ],
      ),
    );
  }
}