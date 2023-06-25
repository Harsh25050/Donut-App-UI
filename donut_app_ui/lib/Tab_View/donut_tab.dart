import 'package:donut_app_ui/Models/cart.dart';
import 'package:donut_app_ui/util/donut_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DonutTab extends StatelessWidget {
  DonutTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return GridView.builder(
        itemCount: value.donutOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutData(
            donutFlavor: value.donutOnSale[index][0],
            donutPrice: value.donutOnSale[index][1],
            donutColor: value.donutOnSale[index][2],
            imageName: value.donutOnSale[index][3],
            onPressed: () {
              Provider.of<Cart>(context, listen: false).addItemToCart(index);
            },
          );
        },
      );
    });
  }
}
