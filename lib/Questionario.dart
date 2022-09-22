import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './Questao.dart';
import './Respostas.dart';
class Questionario extends StatelessWidget {

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;


  Questionario({
    required this.perguntas,
    required  this.perguntaSelecionada,
    required this.quantoResponder,
  });

   bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()["respostas"]
        : [];

    return Column(
                children: <Widget>[
                  Questao(perguntas[perguntaSelecionada]["texto"].toString()),
                  ...respostas
                  .map((resp) {
                    
                    return Resposta(resp["texto"].toString(), () => quantoResponder(int.parse(resp["nota"].toString())),
                    );
                         })
                  .toList(),
                ],
              );
  }
}