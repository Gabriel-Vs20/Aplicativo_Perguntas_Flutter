import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  
    final String respostas;

    final void Function() onSelect;

    Respostas(this.respostas, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 139, 168, 241)),
          foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 0, 51, 255)),
        ),
        child: Text(respostas),

        onPressed: onSelect,
      ),
      );
  }
}