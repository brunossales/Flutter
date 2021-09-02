import 'package:flutter/material.dart';

void main() async{
  runApp(
    MaterialApp(
      home: Calculadora(),
    ),
  );
}

class Calculadora extends StatefulWidget {

  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  late var primeiroNum;
  late var segundoNum;
  late var resultado;
  late var tipo;
  late int cont;
  @override
  void initState() {
    cont = 0;
    primeiroNum = "";
    segundoNum = "";
    resultado = "";
    tipo = "";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          children: [
            Row(
            children: <Widget>[
              SizedBox(width: 5),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(cont == 0){
                        primeiroNum = 0;
                        cont++;
                      }
                      else
                        segundoNum = 0;
                    });
                  },
                child: Text('0'),
                backgroundColor: Colors.purpleAccent,
              ),
              SizedBox(width: 5),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if(cont == 0){
                      primeiroNum = 1;
                      cont++;
                    }
                    else
                      segundoNum = 1;
                  });
                },
                child: Text('1'),
                backgroundColor: Colors.purpleAccent,
              ),
              SizedBox(width: 5),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if(cont == 0){
                      primeiroNum = 2;
                      cont++;
                    }
                    else
                      segundoNum = 2;
                  });
                },
                child: Text('2'),
                backgroundColor: Colors.purpleAccent,
              ),
              SizedBox(width: 5),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if(cont == 0){
                      primeiroNum = 3;
                      cont++;
                    }
                    else
                      segundoNum = 3;
                  });
                },
                child: Text('3'),
                backgroundColor: Colors.purpleAccent,
              ),
              SizedBox(width: 5),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if(cont == 0){
                      primeiroNum = 4;
                      cont++;
                    }
                    else
                      segundoNum = 4;
                  });
                },
                child: Text('4'),
                backgroundColor: Colors.purpleAccent,
              ),
              SizedBox(width: 5),
            ],
          ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(cont == 0){
                        primeiroNum = 5;
                        cont++;
                      }
                      else
                        segundoNum = 5;
                    });
                  },
                  child: Text('5'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(cont == 0){
                        primeiroNum = 6;
                        cont++;
                      }
                      else
                        segundoNum = 6;
                    });
                  },
                  child: Text('6'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(cont == 0){
                        primeiroNum = 7;
                        cont++;
                      }
                      else
                        segundoNum = 7;
                    });
                  },
                  child: Text('7'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(cont == 0){
                        primeiroNum = 8;
                        cont++;
                      }
                      else
                        segundoNum = 8;
                    });
                  },
                  child: Text('8'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if(cont == 0){
                        primeiroNum = 9;
                        cont++;
                      }
                      else
                        segundoNum = 9;
                    });
                  },
                  child: Text('9'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      tipo = '+';
                    });
                  },
                  child: Text('+'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      tipo = '-';
                    });
                  },
                  child: Text('-'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      tipo = '*';
                    });
                  },
                  child: Text('*'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      tipo = '/';
                    });
                  },
                  child: Text('/'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      tipo = '%';
                    });
                  },
                  child: Text('%'),
                  backgroundColor: Colors.purpleAccent,
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                RaisedButton(
                    onPressed: () {
                      setState(() {
                        switch(tipo){
                          case '+' :
                            resultado = primeiroNum + segundoNum;
                            break;
                          case '-' :
                            resultado = primeiroNum - segundoNum;
                            break;
                          case '*' :
                            resultado = primeiroNum * segundoNum;
                            break;
                          case '%' :
                            resultado = primeiroNum % segundoNum;
                            break;
                          case '/' :
                            if(primeiroNum == 0)
                              resultado = 'impossível dividir um 0';
                            else
                              resultado = primeiroNum / segundoNum;
                            break;
                        }
                      });
                   },
                  color: Colors.blueAccent,
                  child: Text('Calcular'),
                ),
                SizedBox(width: 100),
                RaisedButton(
                  onPressed: () {
                    primeiroNum = "";
                    segundoNum = "";
                    resultado = "";
                    tipo = "";
                    cont = 0;
                  },
                  color: Colors.blueAccent,
                  child: Text('Zerar'),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Text(
                  ' Operação: $primeiroNum $tipo $segundoNum ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Text(
                    ' Resultado: $resultado ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      backgroundColor: Colors.blueAccent,
                    ),
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}