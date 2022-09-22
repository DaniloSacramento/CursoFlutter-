import 'package:flutter/material.dart';
import './Questao.dart';
import './Respostas.dart';

main() => runApp(PerguntaApp());  // INSTANCIEI O PERGUNTA APP

class _PerguntaAppState extends State<PerguntaApp> {

   var _PerguntaSelecionada = 0;

   

  
  void _responder() {     
     setState(() {
        _PerguntaSelecionada++;   // DENTRO DO SET STATE VOCE PASSA AQUILO QUE ESTÁ SENDO MODIFICADO
     });
     

       }

  @override
   
  Widget build (BuildContext context){  // CRIAMOS UM METODO 
    
    final List<Map<String, Object>> perguntas = [ 
      {
        "texto" : "Qual é seu time?",
        "respostas": ["Nautico" ,  "Sport" , "Santa Cruz", "Salgueiro"]
      },
      {
        "texto" : "Qual seu jogador favorito?",
        "respostas": ["Jean Carlos", "Kieza", "Diego Souza", "Denis Marques"], 
      },
      {
        "texto": "Qual seu estadio de futebol favorito?",
        "respostas": ["Aflitos", "Arruda", "Ilha do Retiro", "Arena Pernambuco"]
      }
  ]; 

    return  MaterialApp(
      home:  Scaffold (
        appBar: AppBar(
          title: Text("Escolha seu time"),     // O TITLE É UM PARAMETRO NOMEADO QUE RECEBE UM WIDGET
        ),
         body:  Column(
           children:  <Widget>  [
             Questao(perguntas[_PerguntaSelecionada]["texto"].toString()),
             Resposta("Resposta 1", _responder),  //  A FUNCAO _RESPONDER FOI PASSADA COMO PARAMENTRO PARA RESPOSTA
             Resposta("Resposta 2", _responder),
             Resposta("Resposta 3", _responder) ,
             
               
           ],
         ),
         ),
      );

  }
}
class PerguntaApp extends StatefulWidget{ 
  
 @override
  _PerguntaAppState createState() {
     return _PerguntaAppState();
  }
  
  
 

    
 
}