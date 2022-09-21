import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());  // INSTANCIEI O PERGUNTA APP


class PerguntaApp extends StatelessWidget{ 

  @override
  Widget build (BuildContext context){  // CRIAMOS UM METODO 
    return  MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: Text("Escolha seu time"),     // O TITLE É UM PARAMETRO NOMEADO QUE RECEBE UM WIDGET
        ),
         body: Text("Olá Flutter"),
      )
    );
  }
}