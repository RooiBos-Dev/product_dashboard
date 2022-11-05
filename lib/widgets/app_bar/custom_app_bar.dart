import 'package:flutter/material.dart';
import 'package:product_dashboard/model/product/product_list.dart';
import 'package:product_dashboard/screen/dashboard/widget/dashboard_grid.dart';
import 'package:product_dashboard/theme/app_colours.dart';
import 'package:product_dashboard/theme/text_styles.dart';
import 'package:product_dashboard/widgets/app_bar/custom_virtual_card.dart';

class CustomAppBar extends CustomScrollView {
  CustomAppBar({
    required final Key key,
    required final GlobalKey<ScaffoldState> scaffoldKey,
    required final ProductList productList,
    required final String text,
    required final StandardColor colour,
    required final BuildContext context,
    required final TabController tabController,
    required final List<Tab> tabs,
  }) : super(
          key: key,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              key: Key('app_bar ${productList.productList.length + 1}'),
              forceElevated: false,
              excludeHeaderSemantics: true,
              floating: false,
              pinned: true,
              expandedHeight: 290,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomVirtualCard(
                    key: const Key('virtual_card'),
                  ),
                ),
                expandedTitleScale: 5,
              ),
            ),

            SliverAppBar(
              // key: Key('app_bar ${dashboardItemList!.length}'),
              scrolledUnderElevation: 0,
              actions: [Container()],
              backgroundColor: AppColours.lightGrey,
              floating: false,
              automaticallyImplyLeading: false,
              pinned: true,
              expandedHeight: 0,
              toolbarHeight: 60,
              collapsedHeight: 60,
              title: Center(
                child: TabBar(
                  key: Key('${productList..productList.length}'),
                  indicatorPadding: EdgeInsets.zero,
                  padding: EdgeInsets.zero,

                  labelPadding: const EdgeInsets.all(60),
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: tabController,
                  isScrollable: true,
                  automaticIndicatorColorAdjustment: true,
                  // labelPadding: const EdgeInsets.all(50),
                  enableFeedback: true,
                  labelStyle: TextStyles.b612MonoWhite,
                  unselectedLabelColor: AppColours.white,
                  indicator: const BoxDecoration(
                    // border: BoxBorder(),
                    color: AppColours.lightGrey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  labelColor: AppColours.black,
                  physics: const BouncingScrollPhysics(),
                  splashFactory: NoSplash.splashFactory,
                  splashBorderRadius:
                      const BorderRadius.all(Radius.circular(60)),
                  indicatorColor: AppColours.white,
                  tabs: tabs,
                ),
              ),
            ),
            // Silver Items
            SliverToBoxAdapter(
              key: Key('app_bar ${productList.productList.length}'),
              child: DashboardGrid(
                productList: productList.productList,
                key: const Key('dashboard_grid'),
                tabController: tabController,
              ),
            ),
          ],
        );
}
