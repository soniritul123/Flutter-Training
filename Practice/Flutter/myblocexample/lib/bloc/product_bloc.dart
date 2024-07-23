import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myblocexample/Model/Product_Model.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<ProductEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
