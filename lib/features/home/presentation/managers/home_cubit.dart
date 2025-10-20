import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/features/home/domain/entity/product_entity.dart';
import 'package:flutter_task/features/home/domain/usecase/fetch_products_use_case.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
    final FetchProductsUsecase _fetchProductsUsecase;

  HomeCubit(this._fetchProductsUsecase) : super(HomeInitial());

  Future<void> fetchProducts() async {
    emit(HomeLoading());
    try {
      final products = await _fetchProductsUsecase.execute();
      emit(HomeSuccess(products));
    }catch(e){
      emit(HomeFailure(e.toString()));
    }
  }

}