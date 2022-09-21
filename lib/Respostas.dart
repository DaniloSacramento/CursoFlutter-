import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:primeiro_projeto/Questao.dart';
import 'package:flutter/material.dart';
class Resposta extends StatelessWidget {
   final String texto;
   final void Function() onSelecao;
  Resposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: ElevatedButton(
         style: ElevatedButton.styleFrom(
            primary: Colors.green,
       
            ),
            child: Text(
              texto,
              style: const TextStyle(
                 color: Colors.white,
              ),
            ),
            onPressed: onSelecao,
           ),
    );
    
  }
}