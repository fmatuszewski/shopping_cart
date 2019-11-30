import 'package:flutter/material.dart';
import 'package:shopping_list/data/product.dart';

class ProductListWidget extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductListWidget> {

  List<Product> products;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    products = [
      Product("buty",9,""),
      Product("skarpety",9,""),
      Product("kuszla",9,"")

    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index)=>_buildProductRow(products[index]))
    );
  }

  _buildProductRow(Product product) {

  }
}
