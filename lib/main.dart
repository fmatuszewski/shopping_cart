import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/viewModel/product_bloc.dart';
import 'package:shopping_list/data/product_repo.dart';
import 'package:shopping_list/pages/product_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductBloc>.value(
      value: ProductBloc(ProductRepo( Client(),"https://raw.githubusercontent.com","/fmatuszewski/shopping_cart/master/data/")),
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

