import '../model/product.dart';

class ProductRepo {
  List<Product> getProducts() {
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
    return list;
  }


}
