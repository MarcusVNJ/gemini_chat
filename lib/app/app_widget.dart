import 'package:flutter/cupertino.dart';
import 'package:gemini_chat/app/core/theme/theme.dart';
import 'package:gemini_chat/routes.dart';
import 'package:routefly/routefly.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      theme: darkTheme,
        title: "Gemini Chat",
        routerConfig: Routefly.routerConfig(
            routes: routes, initialPath: routePaths.splash));
  }
}
