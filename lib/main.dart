import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/data/product_bloc.dart';
import 'package:shopping_list/data/product_repo.dart';
import 'package:shopping_list/pages/product_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductBloc>.value(
      value: ProductBloc(ProductRepo()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: ProductListWidget(),
      ),
    );
  }
}

