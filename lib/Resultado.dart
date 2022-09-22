import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
 final int pontuacao;
 final void Function() quandoReiniciarApp;


 Resultado(this.pontuacao, this.quandoReiniciarApp);

 String get fraseResultado {
  if(pontuacao < 8){
    return "Parabens";
  }else if(pontuacao < 12){
    return "Voce eh bom";
  }else if(pontuacao < 16){
    return "impressionante";
  }else{
    return "Nível elevado";
  }
 }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
              fraseResultado,
            style: TextStyle(fontSize: 30),
            )
          ),
          ElevatedButton (child: Text(
            "Reiniciar?",
            style: TextStyle(
            fontSize: 20), 
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.green),
            onPressed: quandoReiniciarApp,
       
          
          )
      ],
    );
    
  }
}