// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_application/pages/documentos_page.dart';
import 'package:flutter_application/services/auth_service.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Username'),
            accountEmail: const Text('username@example.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://media0.giphy.com/media/RtdRhc7TxBxB0YAsK6/giphy.gif?cid=ecf05e47qrr2wq4kct9xkacdbwqovudhmp7ttqheh2nbgk65&rid=giphy.gif&ct=g',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text('Alterar foto de perfil'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DocumentosPage(),
                fullscreenDialog: true
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: OutlinedButton(
              onPressed: () => context.read<AuthService>().logout(),
              style: OutlinedButton.styleFrom(
                primary: Colors.red,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Sair do App',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
