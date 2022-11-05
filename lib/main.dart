import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:product_dashboard/route/app_router.dart';
import 'package:product_dashboard/theme/theme.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const ProductDashboard());
}

class ProductDashboard extends StatefulWidget {
  const ProductDashboard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductDashboardState();
}

class _ProductDashboardState extends State<ProductDashboard> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: AppRouter().onGenerateRoute,
      theme: AppTheme.standardTheme.copyWith(),
    );
  }
}
// 8070868440