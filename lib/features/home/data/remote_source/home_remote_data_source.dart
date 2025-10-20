import 'package:flutter_task/features/home/data/model/product_dto.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductDto>> fetchProducts();
}