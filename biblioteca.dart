
import 'livro.dart';


class Biblioteca {
  // Lista para armazenar os livros
  List<Livro> _livros = [];         //por que a lista é privada?

  // Método para adicionar livro
  void adicionarLivro(Livro livro){ //por que 2 parametros aqui?
    _livros.add(livro);
    print("Livro '${livro.nome}' adicionado à biblioteca.");
  }

  // Método para listar todos os livros
  void listarLivro(){
    if (_livros.isEmpty){
      print("biblioteca vazia");
    } else {
      for (var livro in _livros){
        print("${livro.nome}, páginas: ${livro.paginas}");
      }
    }
  }
}
