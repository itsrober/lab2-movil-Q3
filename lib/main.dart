import 'package:flutter/material.dart';
void main() {
  //imprimir resultado
  print(VPalindromo('Sometemos')); 
  print(VPalindromo('RECONOCER')); 
  print(VPalindromo('Pucha ta cara la luz')); 
}


bool VPalindromo(String ciclo) {
  
  String letrasMinusculas = '';
  for (int i = 0; i < ciclo.length; i++) {
    letrasMinusculas += ciclo[i].toLowerCase();
  }
    
  //Referencias --- https://api.flutter.dev/flutter/dart-core/String/codeUnitAt.html
  //Returns the 16-bit UTF-16 code unit at the given index. ---

    String verificacion = '';
  for (int i = 0; i < letrasMinusculas.length; i++) {
    if ((letrasMinusculas[i].codeUnitAt(0) >= 97 && letrasMinusculas[i].codeUnitAt(0) <= 122) || 
        (letrasMinusculas[i].codeUnitAt(0) >= 48 && letrasMinusculas[i].codeUnitAt(0) <= 57)) {
      verificacion += letrasMinusculas[i];
    }
  }
  //VarRandom es para las minusculas **Recordar
 
  int varRandom = verificacion.length;
  for (int i = 0; i < varRandom ~/ 2; i++) {
    if (verificacion[i] != verificacion[varRandom - 1 - i]) {
      return false;
    }
  }
  return true;
}

