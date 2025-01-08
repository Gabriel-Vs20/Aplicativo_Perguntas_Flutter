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
    });
  }

  @override
  Widget build(BuildContext context){

   List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual o seu animal favorito?'
      
    ];

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
            Questao(perguntas[perguntasSelecionadas]),
            Respostas(respostas),
            Respostas(respostasDois),
            Respostas(respostasTres),
          ],

          
        ),

        backgroundColor: const Color.fromARGB(255, 38, 60, 62),
      ),

    );

  }

}

class PerguntaApp extends StatefulWidget{

    _PerguntaAppState createState(){
    return _PerguntaAppState();
   }

}