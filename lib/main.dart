import 'package:flutter/material.dart';

main (){
  runApp(PerguntaApp());

}


class PerguntaApp extends StatelessWidget{

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
            Text(perguntas.elementAt(0)),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
          ],

          
        ),

        backgroundColor: const Color.fromARGB(255, 38, 60, 62),
      ),

    );

  }



}