import 'package:flutter/material.dart';
import './Questao.dart';

main() => runApp(PerguntaApp());  // INSTANCIEI O PERGUNTA APP

class _PerguntaAppState extends State<PerguntaApp> {

   var _PerguntaSelecionada = 0;

   

  
  void _responder() {     
     setState(() {
        _PerguntaSelecionada++;   // DENTRO DO SET STATE VOCE PASSA AQUILO QUE ESTÁ SENDO MODIFICADO
     });
      print(_PerguntaSelecionada);

       }

  @override
   
  Widget build (BuildContext context){  // CRIAMOS UM METODO 
    
    final perguntas = [ 
    "Qual é sua cor favorita?", 
    "Qual é seu time?", 
    "Qual seu animal favorito?",
  ]; 

    return  MaterialApp(
      home:  Scaffold (
        appBar: AppBar(
          title: Text("Escolha seu time"),     // O TITLE É UM PARAMETRO NOMEADO QUE RECEBE UM WIDGET
        ),
         body:  Column(
           children:  <Widget>  [
             Questao(perguntas[_PerguntaSelecionada]),
              ElevatedButton(
              child:  Text("Resposta 1") ,  // UM BOTAO QUE RECEBE UM FILHO = CHILD
              onPressed: _responder,  // NÃO ESTA PASSANDO NENHUMA FUNÇÃO PARA SER EXECUTADA NO BOTAO  
             ),
              ElevatedButton(
              child: Text("Resposta 2") ,  
              onPressed: _responder,  
             ),
               ElevatedButton(
              child: Text("Resposta 3") ,  
              onPressed: _responder,  
             )
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