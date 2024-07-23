part of 'product_bloc.dart';

sealed class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoaingState extends ProductState{}

class ProductLoadedState extends ProductState{
  final List<ProductModel> productModel;

  ProductLoadedState(this.productModel); //constructor
}

class ProductErrorState extends ProductState{}
