import 'package:flutter/material.dart';

import '../../../domain/entities/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),

      child: ListTile(
        leading: CircleAvatar(child: Text(product.id.toString())),

        title: Text(product.name),

        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(product.description),

            Text("₹ ${product.price}"),

            Text("Quantity : ${product.quantity}"),
          ],
        ),
      ),
    );
  }
}
