
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:shopping_list/data/product.dart';
import 'package:shopping_list/data/product_repo.dart';

class ProductBloc extends ChangeNotifier{
  ProductRepo repo;

  ProductBloc(this.repo){
    initialize();
  }

  void initialize(){
    this._allProducts.addAll(repo.getProducts()) ;
  }

  final Set<Product> _shoppingCart = HashSet();
  final List<Product> _allProducts = [];

  List<Product> get allProducts => _allProducts;
  Set<Product> get shoppingCart => _shoppingCart;
  int get productCount => _shoppingCart.length;

  void addProduct(Product product){
    this._shoppingCart.add(product);
    notifyListeners();

  }
  removeProduct(Product product){
    print("remove ${product.name}");
    this._shoppingCart.remove(product);
    notifyListeners();
  }






}