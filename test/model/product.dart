

import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list/model/product.dart';
import 'dart:convert';
import './data.dart' as data;


void main(){
  test("Parse Product json",(){
    Product product = Product.fromJson(jsonDecode(data.product));

    expect(product.name,"Coffee");
    expect(product.price,2.5);
    expect(product.photoUrl,"http://jlhobbies.com/wp-content/uploads/2019/07/china-coffee-cup.jpg");


  });

}