import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final int? minCharacters;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String,String> formValues;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.minCharacters,
    this.keyboardType,
    this.obscureText= false, //por defecto no esconde las palabras
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true, //nad mas entrar al formulario se abre
      //initialValue: 'Tahm Kench',
      textCapitalization: TextCapitalization.words, //pone la primera letra mayusc al hacer espacio
      keyboardType: keyboardType, //añade @ en el teclado para facilitar
      obscureText: obscureText,
      onChanged: (value) { //con onchanged podemos tratar los datos a tiempo real
        formValues[formProperty] = value; //guarda los datos a timepo real en mi map de formvalues
      },
      validator: (valor) {
        if (valor!.length<(minCharacters!-1)){
          return '+'+minCharacters.toString()+' caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction, //cuando el usuario hace una interaccion
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText, //muy recomendable para moviles
        helperText: helperText, //ayuda (si falla la validacion no sale)
        suffixIcon: Icon(suffixIcon), //icono a la derecha 
        icon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(15)),
        )
      ),
    );
  }
}