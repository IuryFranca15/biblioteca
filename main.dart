

import 'biblioteca.dart';
import 'livro.dart';
import 'dart:io';

void main() {
  // Criar uma instância da biblioteca
  Biblioteca biblioteca = Biblioteca();

  int escolha = 0;
  while(true){
    print("1 - adicionar livro: ");
    print("2 - mostrar biblioteca: ");
    print("3 sair");

    escolha = int.parse(stdin.readLineSync()!);

    switch (escolha){
      case 1:
        _adicionarLivro(biblioteca);
        break;
      case 2:
        biblioteca.listarLivro();
        break;
      case 3:
        exit(0);
      default:
        print("opcao invalida");
    }

    void adicionarLivro(Biblioteca biblioteca){ //por que no metodo eu to tendo que passar esses parametros?
      print("titulo do livro: ");
      String? nome = stdin.readLineSync()!;

      print("paginas: ");
      int? paginas = int.parse(stdin.readLineSync()!);
      var livro = Livro(nome, paginas);
    }
  }

}
