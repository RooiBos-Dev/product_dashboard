import 'package:flutter/material.dart';
import 'package:product_dashboard/screen/dashboard/dashboard_view.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // Route to dashboard view.
      case DashBoardView.routeName:
        return MaterialPageRoute(builder: (_) => const DashBoardView());
      // Route to receipt view.
      default:
        return null;
    }
  }
}
