import 'package:routefly/routefly.dart';

import 'app/(public)/drawer_flutter_advanced_page.dart' as a0;
import 'app/(public)/home_page.dart' as a2;
import 'app/(public)/splash_page.dart' as a1;

List<RouteEntity> get routes => [
  RouteEntity(
    key: '/drawer_flutter_advanced',
    uri: Uri.parse('/drawer_flutter_advanced'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a0.DrawerFlutterAdvancedPage(),
    ),
  ),
  RouteEntity(
    key: '/splash',
    uri: Uri.parse('/splash'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a1.SplashPage(),
    ),
  ),
  RouteEntity(
    key: '/home',
    uri: Uri.parse('/home'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a2.HomePage(),
    ),
  ),
];

const routePaths = (
  path: '/',
  drawerFlutterAdvanced: '/drawer_flutter_advanced',
  splash: '/splash',
  home: '/home',
);
