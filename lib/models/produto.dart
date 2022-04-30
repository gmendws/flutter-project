import 'package:flutter/cupertino.dart';

@immutable
class Produto {
  int id;
  int category;
  double valor;
  String title;
  String image;
  String description;

  Produto({
    this.id = 0,
    this.category = 0,
    this.valor = 0,
    this.title = '',
    this.image = '',
    this.description = '',
  });

  Produto copyWith({
    int? id,
    int? category,
    double? valor,
    String? title,
    String? image,
    String? description,
  }) {
    return copyWith(
      id: id ?? this.id,
      category: category ?? this.category,
      valor: valor ?? this.valor,
      title: title ?? this.title,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }
}
