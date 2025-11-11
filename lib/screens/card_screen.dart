import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Widget"),
      ),
      body: Center(
         child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), //espacio en los lados
          children: [
            CustomCardTipo1(),
            CustomCardTipo1()
          ],
         )
      ),
    );
  }
}
