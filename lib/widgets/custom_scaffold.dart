import 'package:flutter/material.dart';
import 'package:product_dashboard/model/product/product_list.dart';
import 'package:product_dashboard/theme/app_colours.dart';
import 'package:product_dashboard/widgets/app_bar/custom_app_bar.dart';

class CustomScaffold extends Scaffold {
  CustomScaffold({
    required final GlobalKey<ScaffoldState> scaffoldKey,
    required final ProductList productList,
    required final String text,
    required final StandardColor colour,
    required final BuildContext context,
    required final TabController tabController,
    required final List<Tab> tabs,
  }) : super(
          key: scaffoldKey,
          body: CustomAppBar(
            productList: productList,
            key: const Key('app_bar'),
            scaffoldKey: scaffoldKey,
            text: text,
            colour: colour,
            context: context,
            tabController: tabController,
            tabs: tabs,
          ),
        );
}
