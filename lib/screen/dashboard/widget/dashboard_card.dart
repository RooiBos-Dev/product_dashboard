import 'package:flutter/material.dart';
import 'package:product_dashboard/model/product/product.dart';
import 'package:product_dashboard/theme/app_colours.dart';
import 'package:product_dashboard/theme/text_styles.dart';

class DashboardCard extends Column {
  DashboardCard({
    super.key,
    required final Product product,
  }) : super(
          children: [
            ElevatedButton(
              key: key,
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(100, 100),
                backgroundColor: AppColours.darkestGrey,
                foregroundColor: AppColours.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              onPressed: () => {},
              onLongPress: () => {},
              child: null,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 10,
                    width: 10,
                    child: Tooltip(
                      triggerMode: TooltipTriggerMode.tap,
                      message: product.name,
                      child: Text(
                        product.name,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: TextStyles.b612MonoWhite,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
}
