class Calculadora{
  Calculadora({
    this.resultado,
  });
//   soma
  factory Calculadora.soma({
    int primeiroNum,
    int segundoNum,
    int resultadoOp
  }) {
      resultadoOp = primeiroNum + segundoNum;
        return Calculadora(
          resultado : resultadoOp
        );
     } 
//   subtração
  factory Calculadora.sub({
    int primeiroNum,
    int segundoNum,
    int resultadoOp
  })  {
        resultadoOp = primeiroNum - segundoNum;
        return Calculadora(
          resultado : resultadoOp
        );
      }
// divisão
  factory Calculadora.div({
    int primeiroNum,
    int segundoNum,
    double resultadoOp
  })  {
        resultadoOp = (primeiroNum / segundoNum);
        return Calculadora(
          resultado : resultadoOp
        );
      }
// multiplicação
  factory Calculadora.mult({
    int primeiroNum,
    int segundoNum,
    int resultadoOp
  })  {
        resultadoOp = (primeiroNum * segundoNum);
        return Calculadora(
          resultado : resultadoOp
        );
      }
  var resultado;
 
}

void main(){
  Calculadora soma = Calculadora.soma(primeiroNum : 4, segundoNum : 6);
  Calculadora subtracao  = Calculadora.sub(primeiroNum : 10, segundoNum : 5);
  Calculadora divisao = Calculadora.div(primeiroNum : 7, segundoNum : 2);
  Calculadora multiplicacao = Calculadora.mult(primeiroNum : 4, segundoNum : 4);
  print('Resultado da soma: ');
  print(soma.resultado);
  print('Resultado da Subtração: ');
  print(subtracao.resultado);
  print('Resultado da divisão:');
  print(divisao.resultado);
  print('Resultado da multiplicação');
  print(multiplicacao.resultado);
  
}