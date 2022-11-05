import 'package:flutter/material.dart';
import 'package:product_dashboard/theme/app_colours.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          CircularProgressIndicator(
            color: AppColours.white,
          ),
        ],
      ),
    );
  }
}
