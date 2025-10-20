import 'package:flutter_task/features/home/data/mapper/product_mapper.dart';
import 'package:flutter_task/features/home/data/remote_source/home_remote_data_source.dart';
import 'package:flutter_task/features/home/domain/entity/product_entity.dart';
import 'package:flutter_task/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ProductEntity>> fetchProducts() async {
    final products = await remoteDataSource.fetchProducts();
    return products.toEntityList();
  }
}