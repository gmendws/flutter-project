import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../controller/produto_card.dart';
import '../models/categories.dart';
import '../models/produto.dart';
import '../repositories/produto_repository.dart';
import 'addproduto_page.dart';
import 'details_page.dart';

class ProdutoPage extends StatefulWidget {
  Category category;

  ProdutoPage({Key? key, required this.category}) : super(key: key);

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  @override
  detailPage(Produto produto) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Details(produto: produto),
      ),
    );
  }

  adicionaProduto() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => addProduto(),
      ),
    );
  }

  Widget build(BuildContext context) {
    var tabela = ProdutoRepository.tabela;
    var resultado = tabela
        .where((element) => element.category == widget.category.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category.nome,
          style: const TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.lightBlue,
        elevation: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          adicionaProduto();
        },
        backgroundColor: Colors.lightBlue,
        icon: Icon(Icons.add),
        label: Text(
          'Adicionar',
          style: TextStyle(
            letterSpacing: 0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 0),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(),
                  ),
                  ListView.builder(
                    itemCount: resultado.length,
                    itemBuilder: (context, index) => ProductCard(
                      produto: resultado[index],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
