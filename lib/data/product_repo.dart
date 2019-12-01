import 'dart:convert';

import 'package:http/http.dart';
import '../model/product.dart';

class ProductRepo {
  Client _client;
  String _baseUrl;
  String _host;

  ProductRepo(this._client, this._host, this._baseUrl);

  Future<List<Product>> getProducts() async {
    try {
      var response = await _client.get(_host + _baseUrl + "products.json");
      if (response.statusCode == 200) {
        return (jsonDecode(response.body) as List)
            .map((value) => Product.fromJson(value))
            .toList();
      }
    } catch (exception) {
      final List<Product> list = List<Product>();
      list.add(Product(
          name: "Coffee",
          price: 2.5,
          photoUrl:
          "http://jlhobbies.com/wp-content/uploads/2019/07/china-coffee-cup.jpg"));
      list.add(Product(
          name: "Muffin",
          price: 3.8,
          photoUrl:
          "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2018/12/banana-muffins-recipe-2.jpg"));
      list.add(Product(
          name: "Sandwich",
          price: 3.8,
          photoUrl:
          "https://tmbidigitalassetsazure.blob.core.windows.net/secure/RMS/attachments/37/1200x1200/Cobb-Salad-Club-Sandwich_EXPS_THAM19_233459_B11_09_2b.jpg"));
      list.add(Product(
          name: "Coctail",
          price: 3.2,
          photoUrl:
          "https://previews.123rf.com/images/neirfy/neirfy1706/neirfy170600499/81158676-glass-of-spritz-long-drink-coctail-isolated-on-white-background.jpg"));

      return list;
    }


  }
}
