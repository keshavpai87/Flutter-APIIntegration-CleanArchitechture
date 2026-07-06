import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import '../../data/datasource/product_remote_datasource.dart';
import '../../data/repository/product_repository_impl.dart';
import '../../domain/usecases/get_products.dart';
import '../../domain/presentation/provider/product_provider.dart';
import '../../domain/repository/product_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // HTTP Client
  sl.registerLazySingleton<http.Client>(() => http.Client());

  // Data Source
  sl.registerLazySingleton<ProductRemoteDatasource>(
    () => ProductRemoteDatasource(sl()),
  );

  // Repository
  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(sl()),
  );

  // Use Case
  sl.registerLazySingleton<GetProducts>(() => GetProducts(sl()));

  // Provider
  sl.registerFactory<ProductProvider>(() => ProductProvider(sl()));
}
