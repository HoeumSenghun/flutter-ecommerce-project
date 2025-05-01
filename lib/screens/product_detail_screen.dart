import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Column(
        children: [
          Image.network(product.imageUrl),
          SizedBox(height: 10),
          Text(product.description),
          SizedBox(height: 10),
          Text('\$${product.price.toStringAsFixed(2)}'),
          ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${product.title} added to cart!')));
          }, child: Text('Add to Cart'))
        ],
      ),
    );
  }
}
