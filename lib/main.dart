import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';
import './resultado.dart';

main (){
  runApp(PerguntaApp());

}

class _PerguntaAppState extends State <PerguntaApp>{


  var perguntasSelecionadas = 0;

   final perguntas = [
    {
        'texto' : 'Qual é a sua cor favorita?',
        'resposta' : ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto' : 'Qual o seu animal favorito?',
      'resposta' : ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    }
      
    ];

    final List<String> resultadoFinal = [];
  
  void responder(){
    setState(() {
      perguntasSelecionadas++;
      print(perguntasSelecionadas);
    });
  }

   void recomecar(){
    setState(() {
      perguntasSelecionadas=  0;
      print(perguntasSelecionadas);
    });
  }



  bool get temPerguntaSelecionada
  {
    return perguntasSelecionadas < perguntas.length;
  }

  @override
  Widget build(BuildContext context){

    List <String> respostas = temPerguntaSelecionada ? perguntas[perguntasSelecionadas].cast() ['resposta'] : [];
    List <Widget> widgets = [];

      for (String textoResp in respostas){
      widgets.add(Respostas (textoResp, responder, resultadoFinal));
     }
  
      return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz!'),
          titleTextStyle: TextStyle(color: Colors.blue,
          fontSize: 25,
          fontWeight: FontWeight.bold ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 145, 194, 247), 
        ),
        body: temPerguntaSelecionada ? Column(
          children: <Widget> [
            Questao(perguntas[perguntasSelecionadas]['texto'].toString()),
            ...widgets,
            //... pega todos os elementos da lista;
          ],
        ): ResultadoFinal(recomecar, resultadoFinal)
      ),

    );

  }

}

class PerguntaApp extends StatefulWidget{
  const PerguntaApp({super.key});


    @override
  _PerguntaAppState createState(){
    return _PerguntaAppState();
   }

}