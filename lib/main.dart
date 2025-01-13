import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

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
      widgets.add(Respostas (textoResp, responder));
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
        ): Column(
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
                onPressed: recomecar,
                  child: Text('Recomeçar'),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: Size(250, 75)
                )

              

             ),
             ),
            )
           
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