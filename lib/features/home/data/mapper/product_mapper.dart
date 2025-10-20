import 'package:flutter_task/features/home/data/model/product_dto.dart';
import 'package:flutter_task/features/home/domain/entity/product_entity.dart';

extension ProductMapper on ProductDto {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      title: title,
      price: price,
      description: description,
      category: category,
      image: image,
      rating: rating.rate,
      ratingCount: rating.count,
    );
  }
}

extension ProductListMapper on List<ProductDto> {
  List<ProductEntity> toEntityList() => map((e) => e.toEntity()).toList();
}