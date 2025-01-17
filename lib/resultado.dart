import 'package:flutter/material.dart';

class ResultadoFinal extends StatelessWidget {

  List<String> resultados = [];  

  Function() recomecar;

  ResultadoFinal(this.recomecar, this.resultados);  


  void limparListaResultados(){
    recomecar();
    resultados.clear();
  }

  

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Text('Parabéns, você chegou ao fim das perguntas. Clique no botão abaixo para recomeçar',
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.blue,
            fontSize: 25,
            ),),
            ),
            
            
            Align(
             alignment: Alignment.center, 
              child: Padding(
              padding: EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                onPressed: limparListaResultados,
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: Size(250, 75)
                ),
                  child: Text('Recomeçar')

              

             ),
             ),
            )
           
          ],
        );
  }
}