import 'package:flutter/material.dart';
import 'package:mainsho/shoe.dart';
import 'package:provider/provider.dart';
import 'cart.dart';
import 'cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: ((context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //heading
                  const Text(
                    'MyCart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.getUserCart().length,
                      itemBuilder: (context, index) {
                        Shoe individualShoe = value.getUserCart()[index];
                        return CartItem(
                          shoe: individualShoe = value.getUserCart()[index],
                        );
                      },
                    ),
                  )
                ],
              ),
            )));
  }
}
