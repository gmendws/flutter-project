import '../models/produto.dart';

class ProdutoRepository {
  static List<Produto> tabela = [
    Produto(
      id: 1,
      category: 2,
      valor: 749.99,
      title: "Cadeira Gamer",
      image: "images/cadeira.jpg",
      description:
          "Esse tipo de cadeira se difere dos modelos tradicionais, pois possui um ajuste ergonômico, e a altura e regulagens com ângulos que favorecem ações durante as partidas.",
    ),
    Produto(
      id: 2,
      category: 2,
      valor: 499.90,
      title: "Escrivaninha",
      image: "images/escrivaninha1.png",
      description:
          "Essa mesa de madeira para computador da Colibri supera todas as expectativas. Compacta, leve e moderna, a Mesa Escrivaninha Ideia cabe em qualquer canto.",
    ),
    Produto(
      id: 3,
      category: 2,
      valor: 200.00,
      title: "Luminária",
      image: "images/luminaria.jpg",
      description:
          "Perfeito enquadramento em zonas urbanas de arquitectura moderna.",
    ),
    Produto(
      id: 4,
      category: 1,
      valor: 114.49,
      title: "Impressora",
      image: "images/impressora.jpg",
      description:
          "A impressora é um aparelho muito útil no dia a dia de qualquer pessoa. A impressora reproduz a imagem de um documento geralmente com tinta, mas algumas utilizam lasers.",
    ),
    Produto(
      id: 5,
      category: 2,
      valor: 60.49,
      title: "Cadeira de Escritório",
      image: "images/cadeira-escritorio.png",
      description:
          "Cadeiras para Escritório Diretor com espaldar (encosto) alto, médio e baixo. Assento mais largo que uma cadeira secretária, podendo acoplar-se braços.",
    ),
  ];
}
