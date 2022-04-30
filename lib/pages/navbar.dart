import 'package:flutter/material.dart';

import 'login_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Username'),
            accountEmail: Text('username@example.com'),
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
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logoff'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginPage())),
          ),
          Divider(),
        ],
      ),
    );
  }
}
