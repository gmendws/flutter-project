import 'package:flutter/material.dart';
import 'package:flutter_application/controller/app_controller.dart';
import 'package:flutter_application/widgets/auth_check.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
          ),
          home: AuthCheck(),
        );
      },
    );
  }
}
