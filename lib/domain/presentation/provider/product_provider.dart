import 'package:flutter/material.dart';

import '../../../domain/entities/product.dart';
import '../../../domain/usecases/get_products.dart';

class ProductProvider extends ChangeNotifier {
  final GetProducts getProductsUseCase;

  ProductProvider(this.getProductsUseCase);

  List<Product> products = [];

  bool loading = false;

  Future<void> loadProducts() async {
    loading = true;

    notifyListeners();

    products = await getProductsUseCase();

    loading = false;

    notifyListeners();
  }
}
