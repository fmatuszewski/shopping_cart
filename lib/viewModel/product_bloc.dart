
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:shopping_list/model/product.dart';
import 'package:shopping_list/data/product_repo.dart';

class ProductBloc extends ChangeNotifier{
  ProductRepo repo;

  ProductBloc(this.repo){
    initialize();
  }

  void initialize() async{
    this._allProducts.addAll( await repo.getProducts()) ;
    notifyListeners();
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