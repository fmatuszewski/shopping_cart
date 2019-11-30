import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/data/product.dart';
import 'package:shopping_list/data/product_bloc.dart';

class BucketWidget extends StatefulWidget {
  @override
  _BucketWidgetState createState() => _BucketWidgetState();
}

class _BucketWidgetState extends State<BucketWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ProductBloc>(
        builder: (context, bloc, __) => ListView.builder(
          itemCount: bloc.shoppingCart.length,
            itemBuilder: (context, index) =>
                _buildItem(bloc.shoppingCart.toList()[index])),
      ),
    );
  }

  Widget _buildItem(Product product) => Row(children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(product.name),
    ),
    IconButton(icon: Icon(Icons.remove),onPressed: (){
      print('remove product');
      Provider.of<ProductBloc>(context).removeProduct(product);
      setState(() {

      });
    },)
  ]);
}
