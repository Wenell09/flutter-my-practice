import 'package:flutter/material.dart';
import 'package:latihan_product_card_boxshadow_roundedrectangle/cart_state.dart';
import 'package:latihan_product_card_boxshadow_roundedrectangle/product_card.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product card"),
          backgroundColor: firstColor,
        ),
        body: ChangeNotifierProvider<CartState>(
          create: (context) => CartState(),
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<CartState>(
                builder: (context, cartState, _) => ProductCard(
                  nama: "Tas koper premium",
                  price: 10000,
                  quantity: cartState.quantity,
                  notification: (cartState.quantity > 10) ? "Diskon 10%" : "",
                  onIncCart: () {
                    cartState.quantity++;
                  },
                  onDecCart: () {
                    cartState.quantity--;
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
