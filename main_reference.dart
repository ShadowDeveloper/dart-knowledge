class Animal {
  
  String  nome;
  double peso;
  
  Animal(this.nome, this.peso);
  
  void comer(){
    print("$nome comeu!");
  }
  
  void fazerSom(){
    print("$nome fez algum som!");
  }
  
}

class Cachorro extends Animal { // Trabalhando com Herança, isso é o que extends faz
  int fofura;
  
   Cachorro(String nome, double peso, this.fofura) : super(nome, peso); // Usamos o super para usar os atributos da nossa super classe que é Animal
  
  void brincar() {
    fofura += 10;
    print("Fofura do $nome aumentou para $fofura !!!");
  }
  
  @override //Reescrita ou ou sobreescrever métodos
  void fazerSom() {
    print("$nome fez au au!");
  }
   
}

class Gato extends Animal {
  
  Gato(String nome, double peso) : super(nome, peso);
  
  bool estaAmigavel() => true;
  
    @override //Reescrita ou ou sobreescrever métodos
  void fazerSom() {
    print("$nome miiiaaauuuuu!!");
  }
  
}

void main() {
  
  Cachorro cachorro = new Cachorro("Dog", 30.0, 5);
  cachorro.fazerSom();
  cachorro.comer();
  cachorro.brincar();
  
  Gato gato = new Gato("Cat", 20.0);
  gato.fazerSom();
  gato.comer();
  print("Está amigavel? ${gato.estaAmigavel()}");
}
