import 'package:flutter/material.dart';
import 'package:flutter_30days/controllers/cart_controller.dart';
import 'package:flutter_30days/controllers/shopping_controller.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: GetX<ShoppingController>(
            builder: (controller) {
              return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                return Card(child: Column(
                  children: [
                    Text('${controller.products[index].productName}'),
                    Text(controller.products[index].productDescription),
                    Text('${controller.products[index].price}'),
                    RaisedButton(onPressed: (){
                      cartController.addToCart(controller.products[index]);
                    }, child: Text('Them vao gio'),)
                  ],
                ),
                );
              });
            }
          )),
          GetX<CartController>(
            builder: (controller) {
              return Text('Total amount: ${controller.totalPrice}');
            }
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
