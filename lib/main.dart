import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());  // INSTANCIEI O PERGUNTA APP


class PerguntaApp extends StatelessWidget{ 

  @override
  Widget build (BuildContext context){  // CRIAMOS UM METODO 
    return const MaterialApp(
      home:  Text("Olá Flutter!!!"),
    );
  }
}