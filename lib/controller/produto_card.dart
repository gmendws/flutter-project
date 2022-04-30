import 'package:flutter/material.dart';

import '../models/produto.dart';
import '../pages/details_page.dart';

class ProductCard extends StatefulWidget {
  Produto produto;

  ProductCard({Key? key, required this.produto}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  DetailProduto(Produto produto) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Details(produto: produto)));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          DetailProduto(widget.produto);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          height: 125,
          child: InkWell(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.lightBlue,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Hero(
                    tag: '${widget.produto.id}',
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      height: 140,
                      width: 190,
                      child: Image.asset(
                        widget.produto.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: SizedBox(
                    height: 136,
                    width: size.width - 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            widget.produto.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30 * 1.5,
                            vertical: 5 / 4,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(22),
                            ),
                          ),
                          child: Text(
                            "R\$${widget.produto.valor}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
