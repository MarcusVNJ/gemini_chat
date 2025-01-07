import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gemini_chat/app/core/app_config.dart';
import 'package:gemini_chat/routes.dart';
import 'package:routefly/routefly.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    AppConfig().start();
    Future.delayed(const Duration(seconds: 2), () {
      Routefly.navigate(routePaths.drawerFlutterAdvanced);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash Page"),
      ),
    );
  }
}
