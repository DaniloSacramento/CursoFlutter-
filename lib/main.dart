import 'package:flutter/material.dart';
import './Questao.dart';
import './Respostas.dart';

main() => runApp(PerguntaApp()); // INSTANCIEI O PERGUNTA APP

class _PerguntaAppState extends State<PerguntaApp> {
  var _PerguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      "texto": "Qual é seu time?",
      "respostas": ["Nautico", "Sport", "Santa Cruz", "Salgueiro"]
    },
    {
      "texto": "Qual seu jogador favorito?",
      "respostas": ["Jean Carlos", "Kieza", "Diego Souza", "Denis Marques"],
    },
    {
      "texto": "Qual seu estadio de futebol favorito?",
      "respostas": ["Aflitos", "Arruda", "Ilha do Retiro", "Arena Pernambuco"]
    }
  ];

  void _responder() {
    // Metodo responder
    if (temPerguntaSelecionada) {
      setState(() {
        _PerguntaSelecionada++; // DENTRO DO SETSTATE VOCE PASSA AQUILO QUE ESTÁ SENDO MODIFICADO
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _PerguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    // CRIAMOS UM METODO

    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_PerguntaSelecionada].cast()["respostas"]
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text( "Escolha seu time"), // O TITLE É UM PARAMETRO NOMEADO QUE RECEBE UM WIDGET
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: <Widget>[
                  Questao(_perguntas[_PerguntaSelecionada]["texto"].toString()),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
                ],
              )
            : const Center(
                child: Text(
                  "Obrigador por responder!",
                  style: TextStyle(fontSize: 30),
                ),
              ),
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
