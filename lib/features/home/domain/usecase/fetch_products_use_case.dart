import 'package:flutter_task/features/home/domain/repository/home_repository.dart';

class FetchProductsUsecase {
  HomeRepository repository;

  FetchProductsUsecase({required this.repository});

  execute(){
    return repository.fetchProducts();
  }
}