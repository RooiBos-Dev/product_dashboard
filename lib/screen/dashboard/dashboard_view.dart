import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:product_dashboard/model/product/product.dart';
import 'package:product_dashboard/model/product/product_list.dart';
import 'package:product_dashboard/theme/app_colours.dart';
import 'package:product_dashboard/widgets/custom_scaffold.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({
    Key? key,
  }) : super(key: key);

  // Route name
  static const String routeName = '/';

  @override
  State<StatefulWidget> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: filterPillButtons.length,
    );
  }

  static List<Tab> filterPillButtons = <Tab>[
    const Tab(
        icon: Icon(Icons.all_inbox),
        iconMargin: EdgeInsets.symmetric(horizontal: 18),
        text: 'All'),
    const Tab(
      icon: Icon(Icons.star),
      iconMargin: EdgeInsets.symmetric(horizontal: 18),
      text: 'Favourites',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffoldKey: _scaffoldKey,
      colour: AppColours.grey,
      context: context,
      text: 'D A S H B O A R D',
      productList: ProductList(
        productList: [
          Product(name: 'Product 1', imageUrl: 'assets/product_animation.json'),
        ],
      ),
      tabController: _tabController,
      tabs: filterPillButtons,
    );
  }
}
