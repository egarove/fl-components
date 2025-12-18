import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

/**
 * como hacer scroll infinito
 */
  final List<int> imageIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      print(' ${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if(scrollController.position.pixels >= scrollController.position.maxScrollExtent){
        fetchData();
      }
    });
  }

  Future fetchData() async { //todos los metodos Future son async
    if (isLoading) return; //si ya estamos cargando no vamos a cargar de nuevo

    isLoading = true;
    setState(() {
      
    });

    await Future.delayed(Duration(seconds: 3)); //simula una espera de 3 segundos pero al ser async no bloquea la app
    add5();

    isLoading = false;

    setState(() {
      
    });
  }


  void add5() {
    int lastId = imageIds.last;
    for (int i=0 ; i<5; i++){
      imageIds.add(lastId+i);
    }
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; //obtengo el tamaño de la pantalla


    return Scaffold(
      body: MediaQuery.removePadding( //soluciona el problema de que con la camara integrada en la pantalla aparece una linea en blanco
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
              controller: scrollController,
              itemCount: imageIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                  placeholder: AssetImage("assets/jar-loading.gif"),
                  image: NetworkImage("https://picsum.photos/500/600?image=${imageIds[index]}")
                );
              },
            ),
            if (isLoading)
              Positioned(
                child: _loadingIcon(),
                bottom: 25,
                left: (size.width/2)-30,
              )
          ],
        ),
      ),
    );
  }
}

class _loadingIcon extends StatelessWidget {
  const _loadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.25), //para la opacidad
          shape: BoxShape.circle,
        ),
        height: 60,
        width: 60,
        child: CircularProgressIndicator(color: AppTheme.primary,),
      ),
    );
  }
}