import 'package:flutter_task/core/utils/api_services.dart';
import 'package:flutter_task/features/home/data/model/product_dto.dart';
import 'package:flutter_task/features/home/data/remote_source/home_remote_data_source.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<ProductDto>> fetchProducts() async {
    final data = await ApiServices.get(endpoint: 'products');
    if (data is List) {
      return data.map((e) => ProductDto.fromJson(e)).toList();
    }

    throw Exception("Unexpected data format from API");
  }
}