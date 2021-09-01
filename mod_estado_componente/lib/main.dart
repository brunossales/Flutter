import 'package:flutter/material.dart';

void main() async{
  runApp(
          MaterialApp(
            home: Contador(),
          ),
    );
}

class Contador extends StatefulWidget {

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  late int contador;
  @override
  void initState() {
    contador = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('O botão foi pressionado $contador vezes'),
        ), //Center
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            contador = contador + 1;
          });

        },
        child: Icon(Icons.add),
      ),// Container
    ); // Scaffold
  }
}

//Usar o stateFull com textField

/* void main() async{
  runApp(
    MaterialApp(
      home: SeuState(),
    ),
  );
}

class SeuState extends StatefulWidget {

  @override
  _SeuStateState createState() => _SeuStateState();
}

class _SeuStateState extends State<SeuState> {

  late TextEditingController controller;
  //Controller que gerencia o texto dentro do textField

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(28.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'Qual seu nome?'),
            ),
          ),
        ),
      ),
    );
  }
}
 */


