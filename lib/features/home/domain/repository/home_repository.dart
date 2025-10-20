import 'package:flutter_task/features/home/domain/entity/product_entity.dart';

abstract class HomeRepository {
  Future<List<ProductEntity>> fetchProducts();
}