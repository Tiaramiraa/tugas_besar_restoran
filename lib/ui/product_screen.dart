import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_flutter_ui/model/product_model.dart';
import 'package:food_delivery_flutter_ui/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'card_screen.dart';

class ProductPage extends StatelessWidget {
  ProductPage(this.itemOfFood);

  final FoodProduct itemOfFood;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Food delivery'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: BackButton(
            color: Colors.grey[600],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0, top: 16),
            child: Container(
              height: 50,
              width: 50,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF0C143),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 22,
                      width: 22,
                      child: Center(
                        child: Consumer<MyProvider>(
                            builder: (context, numberOfOrders, child) {
                          return Text(
                            numberOfOrders.ordersNumber.toString(),
                            style: TextStyle(color: Colors.black),
                          );
                        }),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CartPage(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/cart icon2.png',
                        height: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      
