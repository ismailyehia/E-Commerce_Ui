import 'package:flutter/material.dart';
import 'package:pr2/pages/checkout.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';

class Productsandprice extends StatelessWidget {
  const Productsandprice({super.key});

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Container(
                child: Text(
                  "${carttt.selectedProducts.length}",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(211, 164, 255, 193),
                    shape: BoxShape.circle)),
            IconButton(onPressed: () {
               Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Checkout(),
                      
                    ),
                  );
            },
            
             icon: Icon(Icons.add_shopping_cart)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text("\$ ${carttt.price}"),
        )
      ],
    );
  }
}
