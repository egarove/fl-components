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
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://www.mobafire.com/images/champion/skins/landscape/tahm-kench-high-noon-762x.jpg", description: 'Tahm Kench',),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Maokai_2.jpg", description: "Maokai",),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://www.mobafire.com/images/champion/skins/landscape/nautilus-crystalis-indomitus-762x.jpg", description: "Nautilus"),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://raw.communitydragon.org/pbe/plugins/rcp-be-lol-game-data/global/default/assets/characters/shaco/skins/skin03/images/shaco_splash_centered_3.jpg", description: "Shako")
          ],
         )
      ),
    );
  }
}
