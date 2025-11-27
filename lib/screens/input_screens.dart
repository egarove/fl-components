import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Forms"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Column(
          children: [
            TextFormField(
              autofocus: true, //nad mas entrar al formulario se abre
              //initialValue: 'Tahm Kench',
              textCapitalization: TextCapitalization.words, //pone la primera letra mayusc al hacer espacio
              onChanged: (value) { //con onchanged podemosvalidar los datos a tiempo real
                print("Valor: "+value);
              },
              validator: (valor) {
                if (valor!.length<7){
                  return '+8 caracteres';
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction, //cuando el usuario hace una interaccion
              decoration: InputDecoration(
                hintText: 'Usuario',
                labelText: 'Nombre', //muy recomendable para moviles
                helperText: 'Solo letras', //ayuda (si falla la validacion no sale)
                suffixIcon: Icon(Icons.supervised_user_circle_rounded), //icono a la derecha 
                icon: Icon(Icons.verified_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
                )
              ),
            )
          ],
        )
      ),
    );
  }
}