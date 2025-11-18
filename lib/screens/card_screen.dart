import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoL Champion Cards"),
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
            CustomCardTipo2(imageUrl: "https://cmsassets.rgpub.io/sanity/images/dsfx7636/game_data_live/717732b6371024b0d8aed42ba1910a714bb5cb4f-1280x720.jpg", description: "Nautilus"),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://raw.communitydragon.org/pbe/plugins/rcp-be-lol-game-data/global/default/assets/characters/shaco/skins/skin03/images/shaco_splash_centered_3.jpg", description: "Shako"),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Malphite_2.jpg", description: "Malphite"),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Fizz_1.jpg", description: "Fizz"),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://i.pinimg.com/736x/3f/54/55/3f54553fc2cf1254a87c763424c98ffd.jpg", description: "Renekton"),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://raw.communitydragon.org/pbe/plugins/rcp-be-lol-game-data/global/default/assets/characters/blitzcrank/skins/skin03/images/blitzcrank_splash_centered_3.jpg", description: "Blitzcrank"),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://fbi.cults3d.com/uploaders/25822624/illustration-file/7bef1372-eb08-407b-8f5f-e15a695ee39b/splashart.jpg", description: "Singed"),
            SizedBox(height: 10,),
            CustomCardTipo2(imageUrl: "https://cdn-offer-photos.zeusx.com/f05ad0b7-108b-4684-a8e2-dcbba1ae7095.jpg", description: "Rengar"),
          ],          
         )
      ),
    );
  }
}
