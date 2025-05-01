import 'package:flutter/material.dart';
import '../models/product.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (_) => ProductDetailScreen(product: product),
        ));
      },
      child: Card(
        child: Column(
          children: [
            Image.network(product.imageUrl, height: 150, width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(product.title, style: TextStyle(fontSize: 18)),
            ),
            Text('\$${product.price.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
