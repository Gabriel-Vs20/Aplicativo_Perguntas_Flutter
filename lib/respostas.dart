import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  
    final String respostas;

    Respostas(this.respostas);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(respostas),
        onPressed: null,
      ),
      );
  }
}