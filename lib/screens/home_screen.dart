import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: dummyProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 3/4, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemBuilder: (ctx, i) => ProductItem(dummyProducts[i]),
    );
  }
}
