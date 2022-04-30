import 'package:flutter/material.dart';

import '../models/produto.dart';

class addProduto extends StatefulWidget {
  addProduto({Key? key}) : super(key: key);

  @override
  State<addProduto> createState() => _addProdutoState();
}

class _addProdutoState extends State<addProduto> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adicionar Produto',
          style: TextStyle(
            letterSpacing: 0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                CustomTextField(
                  label: 'Nome',
                  hint: 'nome do produto...',
                  icon: Icons.add_circle_rounded,
                  validator: (text) => text == null || text.isEmpty
                      ? 'Esse campo não pode ser nulo'
                      : null,
                ),
                SizedBox(height: 15),
                CustomTextField(
                  label: 'Descrição',
                  hint: 'descrição do produto...',
                  icon: Icons.description_rounded,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Esse campo não pode ser nulo';
                    }
                  },
                ),
                SizedBox(height: 15),
                CustomTextField(
                  label: 'Valor',
                  hint: 'valor do produto...',
                  icon: Icons.price_change_rounded,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Esse campo não pode ser nulo';
                    }
                  },
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      }
                    },
                    icon: Icon(Icons.save_alt_rounded),
                    label: Text('Salvar'),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      formKey.currentState?.reset();
                    },
                    icon: Icon(Icons.clear),
                    label: Text('Limpar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final IconData? icon;
  final String? Function(String? text)? validator;
  final void Function(String? text)? onSaved;
  final TextInputType? keyboardType;

  const CustomTextField({
    Key? key,
    required this.label,
    this.icon,
    this.hint,
    this.validator,
    this.onSaved,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onSaved: onSaved,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: icon == null ? null : Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
