import 'package:fl_components/screens/galio_screen.dart';
import 'package:fl_components/screens/mordekaiser_screen.dart';
import 'package:fl_components/screens/nautilus_screen.dart';
import 'package:fl_components/screens/skarner_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CampeonesScreen extends StatelessWidget {

  final options = const['Galio','Nautilus','Mordekaiser','Skarner'];
   
  const CampeonesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    //hay que eliminar el const del Scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Campeones'),
        //backgroundColor: Colors.amberAccent,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          title: Text(options[index]),
          onTap: () {
            final campeon = options[index];
            if(campeon == 'Galio'){
              Navigator.pushReplacement(context,
                MaterialPageRoute<void>(
                builder: (BuildContext context) => const GalioScreen(),
                ),
              );
            }
            else if (campeon == 'Nautilus'){
              Navigator.pushReplacement(context,
                MaterialPageRoute<void>(
                builder: (BuildContext context) => const NautilusScreen(),
                ),
              );
            } 
            else if (campeon == 'Mordekaiser'){
              Navigator.pushReplacement(context,
                MaterialPageRoute<void>(
                builder: (BuildContext context) => const MordekaiserScreen(),
                ),
              );
            }
            else if (campeon == 'Skarner'){
              Navigator.pushReplacement(context,
                MaterialPageRoute<void>(
                builder: (BuildContext context) => const SkarnerScreen(),
                ),
              );
            }              
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      )
    );
  }
}