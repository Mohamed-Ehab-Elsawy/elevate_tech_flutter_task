import 'package:flutter_task/features/home/data/remote_source/home_remote_data_source.dart';
import 'package:flutter_task/features/home/data/remote_source/home_remote_data_source_impl.dart';
import 'package:flutter_task/features/home/data/repository/home_repository_impl.dart';
import 'package:flutter_task/features/home/domain/repository/home_repository.dart';
import 'package:flutter_task/features/home/domain/usecase/fetch_products_use_case.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

setupServiceLocator() {
  // Data sources
  getIt.registerSingleton<HomeRemoteDataSource>(HomeRemoteDataSourceImpl());

  // Repository
  getIt.registerSingleton<HomeRepository>(
    HomeRepositoryImpl(remoteDataSource: getIt.get<HomeRemoteDataSource>()),
  );

  // Use cases
  getIt.registerSingleton<FetchProductsUsecase>(
    FetchProductsUsecase(repository: getIt.get<HomeRepository>()),
  );
}