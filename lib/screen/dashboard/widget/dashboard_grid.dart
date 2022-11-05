import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:product_dashboard/screen/dashboard/widget/dashboard_card.dart';

class DashboardGrid extends AnimationLimiter {
  DashboardGrid({
    required final Key key,
    required final List<dynamic> productList,
    required final TabController tabController,
  }) : super(
          key: key,
          child: GridView.builder(
            padding: const EdgeInsets.all(4.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 0.9),
            primary: false,
            shrinkWrap: true,
            itemCount: productList.length,
            itemBuilder: (context, index) =>
                AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 2,
              child: ScaleAnimation(
                duration: const Duration(milliseconds: 500),
                child: SlideAnimation(
                  duration: const Duration(milliseconds: 500),
                  horizontalOffset: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        DashboardCard(
                          product: productList[index],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
}
