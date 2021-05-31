import 'package:flutter_30days/models/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(id: 1, productName: 'Airpod pro', productImage:'aa', productDescription: 'Tai nghe Airpod pro', price: 100),
      Product(id: 2, productName: 'BPC Keychron k3', productImage:'aa', productDescription: 'Ban phim co Keychron k3v2', price: 100),
      Product(id: 3, productName: 'iPhone x 64gb', productImage:'aa', productDescription: 'iPhone X 64b, mau den', price: 100),
      Product(id: 4, productName: 'Macbook pro 15inch', productImage:'aa', productDescription: 'Macbook pro 2015 ban 15inch', price: 100),
    ];
    products.value = serverResponse;
  }
}