import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());  // INSTANCIEI O PERGUNTA APP


class PerguntaApp extends StatelessWidget{ 
  void responder() { 
    
      print("Pergunta respondida");
    
  }
  
 

  @override
   
  Widget build (BuildContext context){  // CRIAMOS UM METODO 
    
    final List <String> perguntas = [ "Qual é sua cor favorita?",  "Qual é seu time?", "Qual seu animal favorito?",
  ]; 

    return  MaterialApp(
      home:  Scaffold (
        appBar: AppBar(
          title: Text("Escolha seu time"),     // O TITLE É UM PARAMETRO NOMEADO QUE RECEBE UM WIDGET
        ),
         body:  Column(
           children:  <Widget>  [
             Text(perguntas.elementAt(1)),
              ElevatedButton(
              child:  Text("Resposta 1") ,  // UM BOTAO QUE RECEBE UM FILHO = CHILD
              onPressed: responder,  // NÃO ESTA PASSANDO NENHUMA FUNÇÃO PARA SER EXECUTADA NO BOTAO  
             ),
              ElevatedButton(
              child: Text("Resposta 2") ,  
              onPressed: responder,  
             ),
               ElevatedButton(
              child: Text("Resposta 3") ,  
              onPressed: () => print("Resposta 3!"),  
             )
           ],
         ),
         ),
      );
    
  }
}