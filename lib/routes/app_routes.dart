import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  //MenuOptions y MenuOption no pueden coincidir los nombres
  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      icon: Icons.home_max_outlined,
      name: 'HomeScreen',
      screen: HomeScreen()
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list_alt_outlined,
      name: 'List View 1',
      screen: ListviewScreen()
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_alt_sharp,
      name: 'List View 2',
      screen: Listview2Screen()
    ),
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert,
      name: 'Alertas',
      screen: AlertScreen()
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_giftcard_outlined,
      name: 'Champion Cards',
      screen: CardScreen()
    ),
    MenuOption(
      route: 'campeones',
      icon: Icons.airline_seat_recline_normal_outlined,
      name: 'Champion Screens',
      screen: CampeonesScreen()),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle_outlined,
      name: 'Avatar',
      screen: AvatarScreen()),
    MenuOption(
      route: 'container',
      icon: Icons.indeterminate_check_box_outlined,
      name: 'Container',
      screen: ContainerScreen()),
    MenuOption(
      route: 'inputs',
      icon: Icons.format_align_center,
      name: 'Forms: inputs',
      screen: InputsScreen()),
      MenuOption(
      route: 'listviewbuilder',
      icon: Icons.list_alt_rounded,
      name: 'Scroll infinito',
      screen: ListViewBuilderScreen()),
      MenuOption(
      route: 'slider',
      icon: Icons.list_alt_rounded,
      name: 'Slider',
      screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext) > getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for(final option in MenuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){      
    return MaterialPageRoute(
      builder: (context) => AlertScreen()
    );      
  }
}