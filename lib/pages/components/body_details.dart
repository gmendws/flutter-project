// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application/models/produto.dart';
import 'package:flutter_application/pages/components/product_image.dart';

import '../../repositories/categories_repository.dart';
import '../../repositories/produto_repository.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.produto}) : super(key: key);
  final Produto produto;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
              Hero(
                tag: '${widget.produto.id}',
                child: Image.asset(
                  widget.produto.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0 / 2),
                child: Text(
                  widget.produto.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                "R\$${widget.produto.valor}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.orange,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0 / 2),
                child: Text(
                  widget.produto.description,
                  style: TextStyle(
                    color: Color(0xFF747474),
                    fontSize: 18,
                  ),
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
