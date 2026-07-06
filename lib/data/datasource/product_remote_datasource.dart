import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/product_model.dart';
import '../../constants/api_constants.dart';

class ProductRemoteDatasource {
  final http.Client client;

  ProductRemoteDatasource(this.client);

  Future<List<ProductModel>> getProducts() async {
    final response = await client.get(
      // Uri.parse("http://192.168.0.122:8000/products"),
      Uri.parse("${ApiConstants.baseUrl}${ApiConstants.products}"),
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);

      return data.map((e) => ProductModel.fromJson(e)).toList();
    }

    throw Exception("Failed");
  }
}
