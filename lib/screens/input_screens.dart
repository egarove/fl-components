import 'package:fl_components/screens/bienvenida_screen.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatefulWidget {
   
  const InputsScreen({Key? key}) : super(key: key);

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();
    
    
    final Map<String,String> formData = {
      'nombre': 'Tahm',
      'apellidos' : 'Kench',
      'email' : 'tahmkench@aguasestancadas.com',
      'password' : '12345',
      'rol' : 'polivalente',
    };

    bool _termsAccepted = false;

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
                minCharacters: 3,
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
              DropdownButtonFormField(
                items: [
                  DropdownMenuItem(child: Text('Support'), value: 'support',),
                  DropdownMenuItem(child: Text('Jungla'), value: 'jungla',),
                  DropdownMenuItem(child: Text('ADC'), value: 'adc',),
                  DropdownMenuItem(child: Text('Top Lane'), value: 'top',),
                  DropdownMenuItem(child: Text('Mid Lane'), value: 'mid',),
                ],
                onChanged: ((value) {
                  formData['rol'] = value ?? 'polivalente'; //por defecto polivante para que no pete
                }),
              ),
              SizedBox(height: 50,),
              Checkbox(
                value: _termsAccepted, 
                onChanged:  (value) {
                  _termsAccepted = value ?? true;
                  setState(() {
              
                  });
                }
              ),
              Text('Acepto las condiciones'),
              ElevatedButton(
                child: SizedBox(
                  child: Center(child: Text("Enviar")),
                  width: double.infinity,
                ),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode()); //cuando le demos a "enviar" se quita el teclado
                  if( !myFormKey.currentState!.validate() && _termsAccepted ){
                    print('Formulario no valido');
                  } else{
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => BienvenidaScreen(
                        formData: formData
                      ),
                    ),);
                  }
                  print(formData);
                }
              )       
            ],          
          ),
        )
      ),
    );
  }
}

