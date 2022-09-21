import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class Questao extends StatelessWidget {
  
   final texto;
   Questao(this.texto );  // COSTRUTOR 
   
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,   // valor maximo do double, basicamente é o valor da tela 2x
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28),
          textAlign: TextAlign.center,
          
        
      
      ),
    );
  }
}