import 'package:flutter/material.dart';
import 'package:primeiro_projeto/Resultado.dart';
import "./Questionario.dart";

main() => runApp(PerguntaApp()); // INSTANCIEI O PERGUNTA APP

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      "texto": "Qual é seu time?",
      "respostas": [
        {"texto": "Nautico", "nota": 10},
        {"texto": "Sport", "nota": 9},
        {"texto": "Santa Cruz", "nota": 6},
        {"texto": "Salgueiro", "nota": 8},
      ],
    },
    {
      "texto": "Qual seu jogador favorito?",
      "respostas": [
           {"texto": "Jean Carlos" , "nota":1 },
           {"texto": "Kieza" , "nota": 2},
           {"texto": "Diego Souza" , "nota": 7},
           {"texto": "Denis Marques" , "nota": 5},
      ],
    },
    {
      "texto": "Qual seu estadio de futebol favorito?",
      "respostas": [
           
       { "texto": "Aflitos" , "nota":9 },    
       {"texto": "Arruda" , "nota":4},
       {"texto": "Ilha do Retiro" , "nota":10 },    
       {"texto": "Arena Pernambuco" , "nota":5 },
      ]
    }
  ];

  void _responder(int pontuacaoUsuario) {
    // Metodo responder
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++; 
        _pontuacaoTotal += pontuacaoUsuario;
         // DENTRO DO SETSTATE VOCE PASSA AQUILO QUE ESTÁ SENDO MODIFICADO
      });
    }
       
  }
  

  void _reiniciarApp(){
        setState(() {    // AQUI IREMOS REINICIALZAR O APP
          _perguntaSelecionada = 0;
          _pontuacaoTotal = 0;

        });

  }
  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // CRIAMOS UM METODO

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
              "Escolha seu time"), // O TITLE É UM PARAMETRO NOMEADO QUE RECEBE UM WIDGET
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quantoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarApp),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
