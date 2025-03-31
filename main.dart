import 'biblioteca.dart';
import 'livro.dart';
import 'dart:io';

void main() {
  final biblioteca = Biblioteca();

  while (true) {
    print("\n--- Menu ---");
    print("1 - Adicionar livro");
    print("2 - Mostrar biblioteca");
    print("3 - Sair");
    print("-------------");

    try {
      final escolha = int.parse(stdin.readLineSync()!);

      switch (escolha) {
        case 1:
          _adicionarLivro(biblioteca);  //por que adicionarlivro com _?
          break;
        case 2:
          biblioteca.listarLivro();
          break;
        case 3:
          exit(0);
        default:
          print("Opção inválida!");
      }
    } catch (e) {
      print("Entrada inválida! Digite um número.");
    }
  }
}

// Função movida para fora do loop
void _adicionarLivro(Biblioteca biblioteca) { //por que no metodo eu to tendo que passar esses parametros?
    print("Título do livro: ");
    var nome = stdin.readLineSync()!;

    print("Número de páginas: ");
    var paginas = int.parse(stdin.readLineSync()!);

    var livro = Livro(nome, paginas);
    biblioteca.adicionarLivro(livro);
  }
