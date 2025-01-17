import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  
    final String respostas;

    final void Function() onSelect;

    final List<String> resultadoFinal;

    Respostas(this.respostas, this.onSelect, this.resultadoFinal);

    void retornarResultado(){
      resultadoFinal.add(respostas);
    }


    void encapsular(){
      onSelect();
      retornarResultado();
      print(resultadoFinal);
    }


  @override
  Widget build(BuildContext context) {

    Color ? backgroundColor;
    Color ? foregroundColor;

    if(respostas == 'Preto'){
      backgroundColor = const Color.fromARGB(255, 0, 0, 0);
      foregroundColor = Color.fromARGB(255, 255, 255, 255);
    }
    if(respostas == 'Vermelho'){
      backgroundColor = const Color.fromARGB(255, 255, 0, 0);
      foregroundColor = Color.fromARGB(255, 255, 255, 255);
    }
    if(respostas == 'Verde'){
      backgroundColor = const Color.fromARGB(255, 0, 252, 13);
      foregroundColor = Color.fromARGB(255, 255, 255, 255);
    }
    if (respostas == 'Branco'){
      backgroundColor = const Color.fromARGB(255, 255, 255, 255);
      foregroundColor = Color.fromARGB(255, 0, 0, 0);
    }
    if (respostas == 'Coelho'){
      backgroundColor = const Color.fromARGB(255, 202, 188, 162);
      foregroundColor = Color.fromARGB(255, 0, 0, 0);
    }
    if (respostas == 'Cobra'){
      backgroundColor = const Color.fromARGB(255, 85, 110, 68);
      foregroundColor = Color.fromARGB(255, 0, 0, 0);
    }
    if (respostas == 'Elefante'){
      backgroundColor = const Color.fromARGB(255, 173, 172, 172);
      foregroundColor = Color.fromARGB(255, 0, 0, 0);
    }
    if (respostas == 'Leão'){
      backgroundColor = const Color.fromARGB(255, 204, 153, 51);
      foregroundColor = Color.fromARGB(255, 0, 0, 0);
    }


    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(backgroundColor),
          foregroundColor: WidgetStateProperty.all(foregroundColor)
        ),

        onPressed: encapsular,
        child: Text(respostas),
      ),
      );
  }
}
