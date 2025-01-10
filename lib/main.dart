import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main (){
  runApp(PerguntaApp());

}

class _PerguntaAppState extends State <PerguntaApp>{


  var perguntasSelecionadas = 0;

  var respostas = 'Resposta 1';
  var respostasDois = 'Resposta 2';
  var respostasTres = 'Resposta 3';
  

  void responder(){
    setState(() {
      perguntasSelecionadas++;
      print(perguntasSelecionadas);
    });
  }

  @override
  Widget build(BuildContext context){

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
    List <String> respostas = perguntas[perguntasSelecionadas].cast() ['resposta'];
    List <Widget> widgets = [];

    for (String textoResp in respostas){
    widgets.add (Respostas (textoResp, responder));
    }
      return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas!'),
          titleTextStyle: TextStyle(color: Colors.blue,
          fontSize: 25,
          fontWeight: FontWeight.bold ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 145, 194, 247), 
        ),
        body: Column(
          children: <Widget> [
            Questao(perguntas[perguntasSelecionadas]['texto'].toString()),
            ...widgets,
            //... pega todos os elementos da lista;
          ],

          
        ),

        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      ),

    );

  }

}

class PerguntaApp extends StatefulWidget{

    _PerguntaAppState createState(){
    return _PerguntaAppState();
   }

}