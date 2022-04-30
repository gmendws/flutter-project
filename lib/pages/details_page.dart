import 'package:flutter/material.dart';
import 'package:flutter_application/models/produto.dart';
import 'package:flutter_application/pages/components/body_details.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.produto}) : super(key: key);
  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(
        produto: produto,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'Editar',
          style: TextStyle(
            letterSpacing: 0,
            fontWeight: FontWeight.bold,
          ),
        ),
        icon: Icon(Icons.edit),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 20.0),
        icon: SvgPicture.asset('images/back.svg'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'Back'.toUpperCase(),
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete_forever,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
