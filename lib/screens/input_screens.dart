import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();
    
    
    final Map<String,String> formData = {
      'nombre': 'Tahm',
      'apellidos' : 'Kench',
      'email' : 'tahmkench@aguasestancadas.com',
      'password' : '12345',
      'rol' : 'usuario',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text("Input Forms"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Form(
          key: myFormKey, //key del formulario que definimos en la linea 11
          child: Column(
            children: [
              CustomTextFormField(
                helperText: "Solo letras",
                hintText: "Pista: Nombre",
                labelText: "Nombre",
                icon: Icons.supervised_user_circle_rounded,
                suffixIcon: Icons.verified_rounded,
                minCharacters: 8,
                formValues: formData,
                formProperty: 'nombre',
              ),
              SizedBox(height: 30,),
              CustomTextFormField(
                helperText: "Solo letras",
                hintText: "Pista: Apellidos",
                labelText: "Apellidos",
                icon: Icons.forest_rounded,
                suffixIcon: Icons.verified_rounded,
                minCharacters: 10,
                formValues: formData,
                formProperty: 'apellidos',
              ),
              SizedBox(height: 30,),
              CustomTextFormField(
                helperText: "Solo letras",
                hintText: "Pista: Email",
                labelText: "Email",
                icon: Icons.email_rounded,
                suffixIcon: Icons.verified_rounded,
                minCharacters: 10,
                keyboardType: TextInputType.emailAddress,
                formValues: formData,
                formProperty: 'email',
              ),
              SizedBox(height: 30,),
              CustomTextFormField(
                helperText: "Secreto",
                hintText: "Pista: Contraseña",
                labelText: "Contraseña",
                icon: Icons.password_rounded,
                suffixIcon: Icons.verified_rounded,
                minCharacters: 8,
                obscureText: true,
                formValues: formData,
                formProperty: 'password',
              ),     
              SizedBox(height: 50,),
              ElevatedButton(
                child: SizedBox(
                  child: Center(child: Text("Enviar")),
                  width: double.infinity,
                ),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode()); //cuando le demos a "enviar" se quita el teclado
                  if( !myFormKey.currentState!.validate() ){
                    print('Formulario no valido');
                  } 
                  print(formData);
                },
              )       
            ],          
          ),
        )
      ),
    );
  }
}

