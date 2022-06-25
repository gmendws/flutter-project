// ignore_for_file: avoid_web_libraries_in_flutter,prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application/services/auth_service.dart';
import 'package:provider/provider.dart';
import 'widgets/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
      ],
      child: AppWidget(),
    ),
  );
}
