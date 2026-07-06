import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'injection.dart';
import 'domain/presentation/provider/product_provider.dart';
import 'domain/presentation/screens/product_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<ProductProvider>(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home: const ProductScreen(),
      ),
    );
  }
}
