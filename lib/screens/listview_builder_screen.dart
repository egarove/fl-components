import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(placeholder: AssetImage("assets/jar-loading.gif"), image: NetworkImage("https://picsum.photos/500/600?image=$index"));
        },
      ),
    );
  }
}