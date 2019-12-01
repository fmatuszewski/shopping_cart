import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/model/product.dart';
import 'package:shopping_list/viewModel/product_bloc.dart';
import 'package:shopping_list/pages/bucket.dart';

class ProductListWidget extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductListWidget> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<ProductBloc>(builder:(_,bloc,__)=> Text("${bloc.productCount} products in cart")),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.shopping_cart),onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> BucketWidget()
            ));
          },)
        ],
      ),
        body: Consumer<ProductBloc>(
          builder: (context,products,__)=>
           ListView.builder(
            itemCount: products.allProducts.length,
              itemBuilder: (context, index) =>
                  _buildProductRow(products.allProducts[index])),
        ));
  }

  _buildProductRow(Product product) => Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(product.name),
            ),
          ),
          Text(product.price.toString()),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
                Provider.of<ProductBloc>(context,listen: false).addProduct(product);
            },
          )
        ],
      );
}
