class Valores {
  static int vezesClicado; // Quando declaramos STATIC significa que é só uma variavel local, e não um objeto sendo assim a classe pai não precisa ser instanciada
}

class PessoaNaoPodeAlterar {
  
}

void main() {

  Valores.vezesClicado = 10;
  const numero = 3;
  print(numero);
  
  final PessoaNaoPodeAlterar pessoa = new PessoaNaoPodeAlterar(); // O final significa que não podemos mais alterar a classe variavel do tipo pessoa mais. É como se fosse um const para classes.
  
}