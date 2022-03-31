import 'package:flutter/material.dart';
import '../models/categories.dart';
import 'navbar.dart';

class ProdutoPage extends StatefulWidget {
  Category category;

  ProdutoPage({Key? key, required this.category}) : super(key: key);

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const NavBar(),
      appBar: AppBar(
        title: Text(widget.category.nome),
      ),
    );
  }
}
