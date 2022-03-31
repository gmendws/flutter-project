// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application/models/produto.dart';
import 'package:flutter_application/pages/components/product_image.dart';

import '../../repositories/categories_repository.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.produto}) : super(key: key);

  final Produto produto;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ProductPoster(
                  size: size,
                  image: "images/cadeira.jpg",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0 / 2),
                child: Text(
                  "Cadeira Gamer",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                '\$56',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.orange,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0 / 2),
                child: Text(
                  produto.nome,
                  style: TextStyle(color: Color(0xFF747474)),
                ),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ],
    );
  }
}
